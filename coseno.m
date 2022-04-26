clc
clear all
punto = input("Grado sexagesimal: ")
fprintf("Coseno de %.2f es %.3f", punto, graficarPuntoCoseno(punto))
function coseno = graficarPuntoCoseno(punto)
    figure(1)
    x=0:0.1:360;
    plot(x, cosd(x), 'm')
    grid on
    title("Coseno respecto a grados sexagesimales.")
    xlabel("Grados sexagesimales (°).")
    ylabel("Coseno.")
    hold on
    coseno = cosd(punto)
    plot(punto, coseno, "bd")
end