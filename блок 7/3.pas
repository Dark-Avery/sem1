{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_3(input, output);
var
    t3: text;
    c: char;
    m, k, l, lm: integer;
begin
    writeln('Zyanchurin Igor, 110 group, 7 - 3');
    assign(t3, 't3.txt');
    reset(t3);
    m := 0;
    l := 0;
    lm := 0;
    while not eof(t3) do begin
        k := 0;
        while not eoln(t3) do begin
            k := k + 1;
            read(t3, c);
        end;
        readln(t3);
        l := l + 1;
        if k > m then begin
            m := k;
            lm := l
        end;
    end;
    reset(t3);
    for k := 1 to lm - 1 do
        readln(t3);
    for k := 1 to m do begin
        read(t3, c);
        write(c)
    end;
    writeln;
    close(t3);
    writeln('done...')
end.
