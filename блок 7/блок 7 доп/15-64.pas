{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_15_64(input, output);
var
    a, b, c, d: text;

procedure separation(var a, c, d: text);
var 
    i1, i2: integer;
    p: boolean;
begin
    reset(a);
    rewrite(c);
    rewrite(d);
    read(a, i1);
    while not eof(a) do begin
        p := true;
        while not eof(a) and p do begin
            read(a, i2);
            p := i1 <= i2;
            writeln(c, i1);
            i1 := i2;
        end;
        p := true;
        while not eof(a) and p do begin
            read(a, i2);
            p := i1 <= i2;
            writeln(d, i1);
            i1 := i2;
        end;
    end;
end;

procedure fusion(var a, b, c, d: text);
var
    i11, i12, i21, i22: integer;
    p1, p2: boolean;
begin
    reset(c);
    reset(d);
    rewrite(a);
    rewrite(b);
    read(c, i11);
    read(d, i21);
    while not eof(c) or not eof(d) do begin
        p1 := true;
        p2 := true;
        while not eof(c) and not eof(d) and p1 and p2 do begin
            if i11 < i21 then begin
                read(c, i12);
                p1 := i11 <= i12;
                writeln(a, i11);
                i11 := i12
            end else begin
                read(d, i22);
                p2 := i21 <= i22;
                writeln(a, i21);
                i21 := i22
            end
        end;
        while not eof(c) and p1 do begin 
            read(c, i12);
            p1 := i11 <= i12;
            writeln(a, i11);
            i11 := i12
        end;
        while not eof(d) and p2 do begin 
            read(d, i22);
            p2 := i21 <= i22;
            writeln(a, i21);
            i21 := i22
        end;
        p1 := true;
        p2 := true;
        while not eof(c) and not eof(d) and p1 and p2 do begin
            if i11 < i21 then begin
                read(c, i12);
                p1 := i11 <= i12;
                writeln(b, i11);
                i11 := i12
            end else begin
                read(d, i22);
                p2 := i21 <= i22;
                writeln(b, i21);
                i21 := i22
            end
        end;
        while not eof(c) and p1 do begin 
            read(c, i12);
            p1 := i11 <= i12;
            writeln(b, i11);
            i11 := i12
        end;
        while not eof(d) and p2 do begin 
            read(d, i22);
            p2 := i21 <= i22;
            writeln(b, i21);
            i21 := i22
        end;
    end;
end;

function ordered(var b: text): boolean;
var
    i1, i2: integer;
    p: boolean;
begin
    p := true;
    reset(b);
    read(b, i1);
    while p and not eof(b) do begin
        read(b, i2);
        if not eof(b) then begin
            p := i1 <= i2;
            i1 := i2
        end
    end;
    ordered := p
end;

begin
    writeln('Zyanchurin Igor, 110 group, "Balanced fusion"');
    assign(a, 'a.txt');
    assign(b, 'b.txt');
    assign(c, 'c.txt');
    assign(d, 'd.txt');
    separation(a, c, d);
    fusion(b, a, c, d);
    repeat
        fusion(c, d, b, a);
        fusion(b, a, c, d);
    until ordered(b);
    close(a);
    close(b);
    close(c);
    close(d);
    writeln('done...')
end.
