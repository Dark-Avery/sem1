{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_15_60(input, output);
var
    prog, prog1: text;
    c: char;

procedure apost;
begin
    write(prog1, c);
    read(prog, c);
    while (c <> '''') and not eoln(prog) do begin
        write(prog1, c);
        read(prog, c);  
    end;
    if not eoln(prog) then
        write(prog1, c)
end;

procedure comm;
begin
    while c <> '}' do begin
        if not eoln(prog) then
            read(prog, c)
        else
            readln(prog, c)
    end;
end;

begin
    writeln('Zyanchurin Igor, 110 group, "No comments..."');
    assign(prog, 'prog.pas');
    assign(prog1, 'prog1.pas');
    reset(prog);
    rewrite(prog1);
    while not eof(prog) do begin
        while not eoln(prog) do begin
            read(prog, c);
            if c = '''' then 
                apost
            else if c = '{' then
                comm
            else
                write(prog1, c);
        end;
        writeln(prog1);
        readln(prog)
    end;
    close(prog);
    close(prog1);
    writeln('done...')
end.
