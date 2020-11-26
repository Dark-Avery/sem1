{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T6_23v(input, output);
var
    c1, c2: char;
begin
    writeln('Зянчурин Игорь, 110, 6.23в');
    writeln('Введите текст: ');
    c1 := '*';
    read(c2);
    while c2 <> '.' do begin
        if not((c1 = 'c') and (c2 = 'b')) then
            write(c2);
        c1 := c2;
        read(c2);
    end;
    writeln
end.
