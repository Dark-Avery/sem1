{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5_42(input, output);
var
    x, y, n, i: integer;
    max: real;
begin
    writeln('Зянчурин Игорь, 110, 5.42');
    writeln('Введите количество координат xy и сами координаты: ');
    read(n);
    max := 0;
    for i := 1 to n do begin
        read(x, y);
        if sqrt(x*x + y*y) > max then 
            max := sqrt(x*x + y*y);
    end;
    writeln('Наименьший радиус - ', max);
end.
