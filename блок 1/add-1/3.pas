{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T3(input, output);
var
    i, n, max, t, l, m: integer;
    {p: boolean;}
begin
    writeln('Зянчурин Игорь, 110, 3');
    writeln('Введите число: ');
    read(n);
    max := 0;
    l := 1;
    {t := n;}
    m := 1;
    while n div m >= 10 do begin {while t > 0 do begin}
        l := l + 1;
        {t := t div 10;}
        {if m < 10000 then}
        m := m * 10;
        {else p := true;}
    end;
    writeln(l, ' ', m);
    for i := 1 to l do begin
        t := n mod m + n div (m * 10) * m;
        {if p then begin 
            t := n mod 10000;
            p := false
        end else begin
            t := n div m * (m div 10) + n mod (m div 10);
            m := m div 10;
        end;}
        writeln(t);
        if t > max then
            max := t;
        {t := 0}
        m := m div 10;
    end;
    writeln('Макс. число без одной из цифр - ', max)
end.
