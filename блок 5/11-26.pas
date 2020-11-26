{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_11_26(input, output);
const
    n = 4;
type
    vector = array[1..n] of real;
var
    x, y, z: vector;
    min, minx, miny, minz: real;
    
procedure inputv(var v: vector);
var
    i: integer;
begin
    for i := 1 to n do
        read(v[i]);
end;

function minv(var v: vector): real;
var
    i, min: integer;
begin
    min := 1;
    for i := 2 to n do
        if v[i] > v[min] then 
            min := i;
    minv := v[min]
end;

function scal(var v1, v2: vector): real;
var
    i: integer;
    res: real;
begin
    res := 0;
    for i := 1 to n do
        res := res + v1[i] * v2[i];
    scal := res
end;

begin
    writeln('Зянчурин Игорь, 110, 11.26');
    writeln('Введите 3 вектора с ', n, ' элементами: ');
    inputv(x);
    inputv(y);
    inputv(z);
    minx := minv(x);
    miny := minv(y);
    minz := minv(z);
    min := minx;
    if miny > min then
        min := miny;
    if minz > min then
        min := minz;
    if min = minx then
        writeln('(a,a)-(b,c) = ', (scal(x, x) - scal(y, z)):0:5)
    else if min = miny then
        writeln('(a,a)-(b,c) = ', (scal(y, y) - scal(x, z)):0:5)
    else 
        writeln('(a,a)-(b,c) = ', (scal(z, z) - scal(y, x)):0:5)
end.
