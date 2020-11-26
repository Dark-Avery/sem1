{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T5(input, output);
var
    n, m, l, c, t: integer;
    p: boolean;
begin
    writeln('Зянчурин Игорь, 110, 5');
    writeln('Введите число: ');
    read(n);
    p := true;
    l := 0;
    m := 1;
    c := 1;
    t := n;
    while t > 0 do begin
        l := l + 1;
        t := t div 10;
        if m < 10000 then
            m := m * 10;
    end;
    while p and (m > c) do begin
        p := n div c mod 10 = n div m mod 10;
        c := c * 10;
        m := m div 10;
    end;
    if p then 
        writeln('Да')
    else
        writeln('Нет')
end.
