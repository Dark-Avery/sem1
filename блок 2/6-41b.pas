{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_41b(input, output);
var
    k: integer;
    c: char;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 6.41б');
    writeln('Введите текст без пробелов, в конце точка: ');
    p := true;
    k := 0;
    read(c);
    while (c <> '.') and p do begin
        if (c < '0') or (c > '6') then
            p := false
        else 
            k := k + ord(c) - ord('0');
        read(c)
    end;
    if k mod 2 <> 0 then
        p := false;
    if p then
        writeln('Это четное число в 7-й с.с.')
    else 
        writeln('Это не четное число в 7-й с.с.')
end.
