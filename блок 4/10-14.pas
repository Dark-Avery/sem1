{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_10_14(input, output);
var
    a: array[1..9] of packed array [1..4] of char;
    x: integer;
begin
    writeln('Зянчурин Игорь, 110, 10.14');
    writeln('Введите число от 1 до 39: ');
    read(x);
    a[1] := 'I   ';
    a[2] := 'II  ';
    a[3] := 'III ';
    a[4] := 'IV  ';
    a[5] := 'V   ';
    a[6] := 'VI  ';
    a[7] := 'VII ';
    a[8] := 'VIII';
    a[9] := 'IX  ';
    while x > 9 do begin
        write('X');
        x := x - 10
    end;
    if x <> 0 then
        write(a[x]);
    writeln
end.
