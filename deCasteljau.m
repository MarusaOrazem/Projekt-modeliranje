function tocka = deCasteljau(b,t)
% DE_CASTELJAU izracuna tocko na  Bezierovi krivulji pri parametru t
% s pomocjo de Casteljauovega algoritma.
% Stolpci matrike b so kontrolne tocke Bezierove krivulje.

%stevilo tock je n+1

n=size(b,2)-1;

%kolikokrat je to�k naredimo ta postopek
for r=1:n
    b(:,1:end-r) = (1-t)*b(:,1:end-r) + t*b(:,2:end-r+1);
end
%to�ka na krivulji je 0-ta to�ka (prva ker matlab) po n ra�unih
tocka = b(:,1); 


end