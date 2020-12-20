{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_2(input, output);
var
    in1, in2, outm: text;
    i, j: integer;
begin
    writeln('Zyanchurin Igor, 110 group, "Two-way merger"');
    assign(in1, 'in1.txt');
    assign(in2, 'in2.txt');
    assign(outm, 'out.txt');
    reset(in1);
    reset(in2);
    rewrite(outm);
    read(in1, i);
    read(in2, j);
    while not eof(in1) and not eof(in2) do begin
        if i < j then begin
            writeln(outm, i);
            read(in1, i)
        end else begin
            writeln(outm, j);
            read(in2, j)
        end
    end;
    while not eof(in1) do begin 
        writeln(outm, i);
        read(in1, i);
    end;
    while not eof(in2) do begin 
        writeln(outm, j);
        read(in2, j);
    end;
    close(in1);
    close(in2);
    close(outm);
    writeln('done...')
end.
