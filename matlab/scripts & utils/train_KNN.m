function mdl = train_KNN(X, y)

 mdl =fitrknn(X, y,'NumNeighbors',5);

end
