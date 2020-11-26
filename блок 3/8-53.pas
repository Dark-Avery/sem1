{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T8_53(input, output);
const 
    n = 10;
var
    x, y: array [1..n] of integer;
    i, j, d, max, maxi, maxj: integer;
begin
    writeln('Зянчурин Игорь, 110, 8.53');
    writeln('Введите координаты точек: ');
    for i := 1 to n do
        read(x[i], y[i]);
    max := 0;
    for i:= 1 to n - 1 do
        for j := i + 1 to n do begin
            d := sqr(x[i] - x[j]) + sqr(y[i] - y[j]);
            if d > max then begin
                max := d;
                maxi := i;
                maxj := j
            end
        end;
    writeln('Максимальное расстояние - между ', maxi, ' и ', maxj)
end.
