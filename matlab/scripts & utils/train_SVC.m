function mdl = train_SVC(X, y)

    mdl = fitcsvm(X, y, ...
        'KernelFunction','gaussian');
end
