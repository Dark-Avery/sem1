{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_2(input, output);
var
    t1, t2: text;
    c1, c2: char;
    p: boolean;
begin
    writeln('Zyanchurin Igor, 110 group, 7 - 2');
    assign(t1, 't1.txt');
    assign(t2, 't2.txt');
    reset(t1);
    reset(t2);
    p := true;
    while (not eof(t1)) and (not eof(t2)) and p do begin
        while (not eoln(t1)) and (not eoln(t2)) and p do begin
            read(t1, c1);
            read(t2, c2);
            p := c1 = c2
        end;
        if (not eoln(t1)) or (not eoln(t2)) then
            p := false;
        readln(t1);
        readln(t2)
    end;
    if (not eof(t1)) or (not eof(t2)) then
        p := false;
    writeln(p);
    close(t1);
    close(t2);
    writeln('done...')
end.
