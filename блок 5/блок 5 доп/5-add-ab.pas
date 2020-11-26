{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_5_add_ab(input, output);
const
    n = 200;
type
    mas = array[1..n] of 0..maxint;
var
    a, b, c: mas;
    
procedure power(var m: mas; t, r: integer);
var
    i, k: integer;
begin
    for i := 1 to n - 1 do
        m[i] := 0;
    m[n] := 1;
    for i := 1 to r do begin
        for k := 1 to n do
            m[k] := m[k] * t;
        for k := n downto 2 do
            if m[k] > 9 then begin
                m[k - 1] := m[k - 1] + m[k] div 10;
                m[k] := m[k] mod 10;
            end
    end
end;

procedure fact(z: integer);
var
    i, k: integer;
    m: mas;
begin
    for i := 1 to n - 1 do
        m[i] := 0;
    m[n] := 1;
    for i := 2 to z do begin
        for k := 1 to n do
            m[k] := m[k] * i;
        for k := n downto 2 do
            while m[k] > 9 do begin
                m[k - 1] := m[k - 1] + m[k] div 10;
                m[k] := m[k] mod 10
            end;
    end;
    c := m
end;

procedure summfac(var m: mas; r: integer);
var
    i, k: integer;
begin
    for i := 1 to n do
        m[i] := 0;
    for i := 1 to r do begin
        fact(i);
        for k := n downto 1 do
            m[k] := m[k] + c[k];
        for k := n downto 2 do
            if m[k] > 9 then begin
                m[k - 1] := m[k - 1] + m[k] div 10;
                m[k] := m[k] mod 10;
            end
    end
end;

procedure outputm(var m: mas);
var
    i: integer;
begin
    i := 1;
    while m[i] = 0 do
        i := i + 1;
    for i := i to n do
        write(m[i]);
    writeln
end;

begin
    writeln('Зянчурин Игорь, 110, 5.add.а.б');
    power(a, 2, 500);
    write('2^500 = ');
    outputm(a);
    summfac(b, 100);
    write('1! + 2! + ... + 100! = ');
    outputm(b)
end.
