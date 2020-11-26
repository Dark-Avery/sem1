{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_12_38(input, output);
const
    n = 5;
var
    i: integer;
    a: array [1..n] of integer;
    
procedure exchange(i, j: integer);
var
    t: integer;
begin
    t := a[i];
    a[i] := a[j];
    a[j] := t
end;
    
procedure generate(k: integer);
var
    i: integer;
begin
    if k = 1 then begin
        for i := 1 to n do
            write(a[i], ' ');
        writeln
    end else
        for i := k downto 1 do begin
            exchange(i, k);
            generate(k - 1);
            exchange(i, k)
        end
end;

begin
    writeln('Зянчурин Игорь, 110, 12.38');
    write('Последовательность - ');
    for i := 1 to n do
        read(a[i]);
    writeln('Возможные ', n, '! перестановок: ');
    generate(n)
end.
