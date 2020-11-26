{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_11_36(input, output);
const
    n = 6;
type
    word = packed array[1..n] of char;
var
    w1, w2, w3: word;
    z: char;
    
procedure readword(var w: word);
var
    i: integer;
    c: char;
begin
    read(c);
    i := 1;
    while (c <> ',') and (c <> '.') do begin
        w[i] := c;
        read(c);
        i := i + 1;
    end;
    z := c;
    for i := i to n do 
        w[i] := ' ';
end;

begin
    writeln('Зянчурин Игорь, 110, 11.36');
    writeln('Введите слова, в которых от 1 до 6 букв, между запятые: ');
    readword(w1);
    if z <> '.' then
        readword(w2);
    if z <> '.' then
        repeat
            readword(w3);
            if (w2 = w3) and (w2 = w1) then
                write(w2, ' ');
            w1 := w2;
            w2 := w3
        until z = '.';
    writeln
end.
