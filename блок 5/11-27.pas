{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_11_27(input, output);
const
    n = 3;
type
    matrix = array[1..n, 1..n] of real;
var
    a, b: matrix;
    
procedure inputm(var m: matrix);
var
    i, j: integer;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(m[i, j])
end;

function tr(var m: matrix): real;
var
    i: integer;
    res: real;
begin
    res := 0;
    for i := 1 to n do
        res := res + m[i, i];
    tr := res
end;

procedure sqrm(var m: matrix);
var
    i, j, k: integer;
    res: matrix;
begin
    for i := 1 to n do
        for j := 1 to n do begin
            res[i, j] := 0;
            for k := 1 to n do
                res[i, j] := res[i, j] + m[i, k] * m[k, j]
        end;
    m := res
end;

procedure outputm(var m: matrix);
var
    i, j: integer;
begin
    for i := 1 to n do begin
        for j := 1 to n do
            write(m[i, j]:0:5, ' ');
        writeln
    end
end;

begin
    writeln('Зянчурин Игорь, 110, 11.27');
    writeln('Введите 2 кв. матрицы ', n, '-го порядка: ');
    inputm(a);
    inputm(b);
    writeln('Квадрат матрицы с наименьшим следом - ');
    if tr(a) < tr(b) then begin
        sqrm(a);
        outputm(a)
    end else begin
        sqrm(b);
        outputm(b)
    end
end.
