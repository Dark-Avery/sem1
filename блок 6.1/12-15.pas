{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_12_15(input, output);

function digits: integer;
var
    c: char;
begin
    read(c);
    if c = '.' then
        digits := 0
    else 
        digits := digits + ord((c >= '0') and (c <= '9'))
end;

begin
    writeln('Зянчурин Игорь, 110, 12.15');
    writeln('Введите посл-ность символов, в конце точка: ');
    writeln('Кол-во цифр: ', digits)
end.
