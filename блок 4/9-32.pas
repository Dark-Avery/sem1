{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_9_32(input, output);
var
    a: array ['a'..'z', 'a'..'z'] of 0..maxint;
    max: integer;
    c, cn, ck, ai, bi: char;
begin
    writeln('Зянчурин Игорь, 110, 9.32');
    writeln('Введите текст через запятую или пробел, в конце точка: ');
    for cn := 'a' to 'z' do 
        for ck := 'a' to 'z' do
            a[cn, ck] := 0;
    c := '*';
    max := 0;
    while c <> '.' do begin
        read(c);
        cn := c;
        while (c <> ',') and (c <> '.') and (c <> ' ') do begin
            ck := c;
            read(c)
        end;
        a[cn, ck] := a[cn, ck] + 1;
        if a[cn, ck] > max then begin
            max := a[cn, ck];
            ai := cn;
            bi := ck
        end
    end;
    writeln('Самая частая пара - ', ai, ', ', bi)
end.
