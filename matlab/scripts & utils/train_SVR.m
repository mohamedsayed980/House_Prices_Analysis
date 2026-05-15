function mdl = train_SVR(X, y)

    mdl = fitrsvm(X, y, ...
        'KernelFunction','gaussian');
end
