{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_11_60(input, output);
const
    n = 5;
    m = 4;
type
    matrix = array[1..n, 1..m] of integer;
var
    a, b, c: matrix;
    max, za, zb, zc: integer;
    
procedure inputm(var mat: matrix);
var
    i, j: integer;
begin
    for i := 1 to n do
        for j := 1 to m do
            read(mat[i, j])
end;

function zero(var mat: matrix): integer;
var
    i, j, k, res: integer;
begin
    res := 0;
    for i := 1 to n do begin
        k := 0;
        for j := 1 to m do
            if mat[i, j] = 0 then
                k := k + 1;
        if k = m then
            res := res + 1
    end;
    zero := res
end;

procedure outputm(var mat: matrix);
var
    i, j: integer;
begin
    for i := 1 to n do begin
        for j := 1 to m do
            write(mat[i, j], ' ');
        writeln
    end;
    writeln
end;

begin
    writeln('Зянчурин Игорь, 110, 11.60');
    writeln('Введите 3 матрицы размера ', n, 'x', m,': ');
    inputm(a);
    inputm(b);
    inputm(c);
    za := zero(a);
    zb := zero(b);
    zc := zero(c);
    writeln('Матрица(-ы) с наиб. кол-вом нулевых строк: ');
    max := za;
    if zb > max then
        max := zb;
    if zc > max then
        max := zc;
    if za = max then
        outputm(a);
    if zb = max then
        outputm(b);
    if zc = max then
        outputm(c)
end.
