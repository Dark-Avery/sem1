


program T1(input, output);
var
    i, n, j, p, q: integer; 

begin
    writeln('{�������� �����, 110, 1 ��� 1{}{}');
    writeln('������� P, Q � n: ');
    read(p, q, n);
    write('P/Q = ', p div q, '.');     
    j := 10 * (p mod q);
    for i := 1 to n do begin
        write(j div q);
        j := 10 * (j mod q)
    end;
    writeln
end.
