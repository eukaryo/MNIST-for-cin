
% http://ufldl.stanford.edu/wiki/index.php/Using_the_MNIST_Dataset

images = loadMNISTImages('train-images-idx3-ubyte');
labels = loadMNISTLabels('train-labels-idx1-ubyte');

fileID = fopen('cin.txt','w');
fprintf(fileID,'60000 28 28\n');
for i = 1:60000
    fprintf(fileID,'%d\n',round(labels(i)));
end
for i = 1:60000
    mat = reshape(images(:,i),[28,28]);
    count = 0;
    first = 1;
    for y = 1:28
        for x = 1:28
            if mat(y,x)==0
                count = count+1;
            else
                if first == 1
                    first = 0;
                else
                    fprintf(fileID,' ');
                end
                if count == 0
                    fprintf(fileID,'%d',round(mat(y,x)*255.0));
                else
                    fprintf(fileID,'0 %d %d',count,round(mat(y,x)*255.0));
                    count = 0;
                end
            end
        end
    end
    fprintf(fileID,' -1\n');
    if mod(i,100)==0
        disp(['cin',int2str(i)]);
    end
end
fclose(fileID);
