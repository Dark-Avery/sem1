{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_41v(input, output);
var
    k, ck: integer;
    c: char;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 6.41в');
    writeln('Введите текст без пробелов, в конце точка: ');
    p := true;
    k := 0;
    read(c);
    while (c <> '.') and p do begin
        if (c < '0') or (c > '9') then
            p := false
        else 
            k := k + ord(c) - ord('0');
        ck := ord(c) - ord('0');
        read(c);
    end;
    p := (k mod 3 = 0) and (ck mod 2 = 0);
    if p then
        writeln('Это число кратное 6')
    else 
        writeln('Это число не кратное 6')
end.
