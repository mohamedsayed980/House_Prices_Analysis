function SummaryTable = generateSummary(app)
    %=============================
    %   Dashboard Summary Logic
    %=============================
    % 1️⃣ التحقق من البيانات
    if isempty(app.DataTable)
        uialert(app.UIFigure, 'No data loaded. Please load data first from Tab1.', 'Missing Data');
        SummaryTable = [];
        return;
    end

    % 2️⃣ التحقق من المتغيرات المهمة
    if isempty(app.VariablesListBox.Items)
        uialert(app.UIFigure, 'No important variables found. Please generate them in Tab2 first.', 'No Variables');
        SummaryTable = [];
        return;
    end

    % 3️⃣ تجهيز البيانات
    data = app.DataTable;
    importantVars = app.VariablesListBox.Items;
    targetVar = app.TargetDropDown.Value;   % من Tab1 أو المتغير الموجود لديك

    % التحقق من وجود الأعمدة المطلوبة
    validVars = intersect(importantVars, data.Properties.VariableNames);
    if isempty(validVars)
        uialert(app.UIFigure, 'Selected variables not found in data table.', 'Invalid Variables');
        SummaryTable = [];
        return;
    end

    % 4️⃣ استخراج البيانات المطلوبة
    selectedData = data(:, validVars);
    if ismember(targetVar, data.Properties.VariableNames)
        selectedData.Target = data.(targetVar);
    else
        uialert(app.UIFigure, 'Target variable not found in data.', 'Missing Target');
        SummaryTable = [];
        return;
    end

    % 5️⃣ حساب الإحصائيات
    meanVals = varfun(@mean, selectedData(:, validVars), 'OutputFormat', 'uniform');
    stdVals  = varfun(@std,  selectedData(:, validVars), 'OutputFormat', 'uniform');
    minVals  = varfun(@min,  selectedData(:, validVars), 'OutputFormat', 'uniform');
    maxVals  = varfun(@max,  selectedData(:, validVars), 'OutputFormat', 'uniform');

    % حساب معامل الارتباط مع الـ Target
    corrVals = zeros(1, numel(validVars));
    for i = 1:numel(validVars)
        corrVals(i) = corr(selectedData.(validVars{i}), selectedData.Target, 'Rows', 'complete');
    end

    % 6️⃣ إنشاء جدول الملخص النهائي
    SummaryTable = table(validVars', meanVals', stdVals', minVals', maxVals', corrVals', ...
        'VariableNames', {'Variable', 'Mean', 'StdDev', 'Min', 'Max', 'CorrWithTarget'});
     
     % 6.1️⃣ ترتيب الجدول تنازليًا حسب Correlation
    [~, idx] = sort(SummaryTable.CorrWithTarget, 'descend');
    SummaryTable = SummaryTable(idx, :);
    
    % 7️⃣ عرض النتائج (اختياري: في TextArea أو UItable أو Command Window)
    disp('===== Summary Table =====');
    disp(SummaryTable);

    % لو عندك TextArea في Tab3 لعرض النتائج
    if isprop(app, 'InsightsRecommendationsTextArea') && ~isempty(app.InsightsRecommendationsTextArea)
        txt = evalc('disp(SummaryTable)');
        app.InsightsRecommendationsTextArea.Value = splitlines(txt);
    end

    % إشعار بسيط
    uialert(app.UIFigure, 'Summary generated successfully!', 'Done');
end
