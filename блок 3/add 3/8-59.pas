{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T8_59(input, output);
var
    a: array ['a'..'z'] of integer;
    b: array ['a'..'z'] of boolean;
    c, i: char;
    max: integer;
begin
    writeln('Зянчурин Игорь, 110, 8.59');
    writeln('Введите посл-ность слов через запятую, в конце точка: ');
    max := 0;
    for i := 'a' to 'z' do
        a[i] := 0;
    repeat
        read(c);
        for i := 'a' to 'z' do
            b[i] := false;
        while (c <> ',') and (c <> '.') do begin
            b[c] := true;
            read(c)
        end;
        for i := 'a' to 'z' do
            if b[i] then begin
                a[i] := a[i] + 1;
                if a[i] > max then
                    max := a[i]
            end
    until c = '.';
    writeln('Часто встр. в словах буквы: ');
    for i := 'a' to 'z' do
        if a[i] = max then
            write(i, ' ');
    writeln
end.
