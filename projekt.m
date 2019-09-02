function odmik = plot_odmik(b,d)

c = 14;
b = [-1,2,3,4;2,-3+c/100,0,3];

B = plotBezier(b); %toèke na krivulji
d = 20; %konstantna oddaljenost, ki doloèa odmik krivulje
%za vsako toèko na krivulji zraèunamo normalo in sicer tako, da najprej
%izraèunamo tangentni vektor in pogledamo kateri vektor je pravokoten nanj
%(normala)

t = linspace(0,1,1000);
N = zeros(2,length(t));

for i = 1:length(t)
    N(:,i) = normala_bez(b,t(i));
end

%naredimo razpredelnico novih toèk, ki do za d odmaknjene od prvotne
%krivulje v normalni smeri
hold on
% krivulja
plot(B(1,:),B(2,:),'r','LineWidth',3);

% kontrolni poligon
plot(b(1,:),b(2,:),'k-o','MarkerFaceColor','k','LineWidth',1.5);



odmik = B + d.* N;
plot(odmik(1,:),odmik(2,:),'g','LineWidth',3)

hold off

end