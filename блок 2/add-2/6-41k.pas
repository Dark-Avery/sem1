{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_41k(input, output);
var
    c, c1: char;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 6.41к');
    writeln('Введите текст без пробелов, в конце точка: ');
    p := true;
    read(c);
    c1 := chr(ord(c) - 1);
    while (c <> '.') and p do begin
        if (c < '0') or (c > '9') then
            p := false
        else 
            p := c = chr(ord(c1) + 1);
        c1 := c;
        read(c);
    end;
    if p then
        writeln('Отрезок')
    else 
        writeln('Не отрезок')
end.
