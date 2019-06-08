function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
rexam1 = X(:,1); %Resultados examen 1
rexam2 = X(:,2); %Resultados examen 2
radmin = y;      %Resultados de admisión

accepted_exam1 = rexam1(y==1); %Notas del examen 1 de los aceptados
accepted_exam2 = rexam2(y==1); %Notas del examen 2 de los aceptados
rejected_exam1 = rexam1(y==0); %Notas del examen 1 de los rechazados
rejected_exam2 = rexam2(y==0); %Notas del examen 1 de los rechazados

plot(accepted_exam1,accepted_exam2,'go','MarkerSize',7,'MarkerFaceColor','g');
plot(rejected_exam1,rejected_exam2,'ro','MarkerSize',7,'MarkerFaceColor','r');










% =========================================================================



hold off;

end
