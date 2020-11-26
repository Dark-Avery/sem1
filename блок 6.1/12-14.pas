{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_12_14(input, output);

function max: integer;
var
    x, m: integer;
begin
    read(x);
    if x = 0 then
        max := x
    else begin
        m := max;
        if x > m then
            max := x
        else 
            max := m
    end
end;

begin
    writeln('Зянчурин Игорь, 110, 12.14');
    writeln('Введите посл-ность целых чисел, в конце точка: ');
    writeln('Максимльное число - ', max)
end.
