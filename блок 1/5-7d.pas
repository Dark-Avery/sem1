{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5_7d(input, output);
var
    x, k, max: integer;
begin
    writeln('Зянчурин Игорь, 110, 5.7д');
    writeln('Введите последо-ность чисел, заканчивающуюся нулем: ');
    read(x);
    k := 0;
    max := 0;
    while x <> 0 do begin
        if x > max then begin
            max := x;
            k := 1
        end else if x = max then
            k := k + 1;
        read(x);
    end;
    writeln('Максимальное число встречается ', k,' раз.');
end.
