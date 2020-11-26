{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_21(input, output);
var
    i: integer;
    c1, c2, c3: char;
begin
    writeln('Зянчурин Игорь, 110, 6.21');
    writeln('Введите текст: ');
    i := 0;
    c1 := '*';
    c2 := '*';
    read(c3);
    while c3 <> '.' do begin
        if (c1 = 'a') and (c2 = 'b') and (c3 = 'c') then
            i := i + 1;
        c1 := c2;
        c2 := c3;
        read(c3)
    end;
    writeln('Кол-во вхождений "abc" - ', i);
end.
