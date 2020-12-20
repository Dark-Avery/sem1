{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program T_4(input, output);
uses heaptrc;
type str = packed array[1..10] of char;
    stud = record
        fn: record fam, name: str end;
        sex: (M, W);
        marks: array[1..5] of 2..5
    end;
    course = file of stud;
    TE = stud;
    tree = ^node;
    node = record
        elem: TE;
        left, right: tree
    end;
var
    all: course;
    ans: text;

function interest(student: stud): boolean;
var
    p, p4: boolean;
    i: integer;
begin
    p := true;
    p4 := false;
    i := 1;
    while p and (i <= 5) do begin
        if student.marks[i] in [2, 3] then
            p := false
        else if student.marks[i] = 4 then
            p4 := true;
        i := i + 1
    end;
    interest := p and p4
end;

procedure intree(var T: tree; E: stud);
begin
    if T = nil then begin
        new(T);
        T^.elem := E;
        T^.left := nil;
        T^.right := nil
    end else if E.fn.fam < T^.elem.fn.fam then
        intree(T^.left, E)
    else if E.fn.fam > T^.elem.fn.fam then
        intree(T^.right, E)
end;

procedure infile(T: tree; var ans: text);
    procedure infile1(T: tree; var ans: text);
    var
        i: integer;
    begin
        if T <> nil then begin
            infile1(T^.left, ans);
            with T^.elem, fn do begin
                write(ans, fam, ' ', name, '   ', sex, '   ');
                for i := 1 to 4 do 
                    write(ans, marks[i], ' ');
                write(ans, marks[5])
            end;
            writeln(ans);
            if T^.left <> nil then
                dispose(T^.left);
            infile1(T^.right, ans);
            if T^.right <> nil then
                dispose(T^.right);
        end;
    end;
begin
    if T <> nil then begin
        infile1(T, ans);
        dispose(T)
    end
end;

procedure analys(var all: course; var ans: text);
var
    students: tree;
    student: stud;
begin
    reset(all);
    rewrite(ans);
    students := nil;
    while not eof(all) do begin
        read(all, student);
        if interest(student) then
            intree(students, student)
    end;
    infile(students, ans);
    close(all);
    close(ans)
end;

begin
    writeln('Zyanchurin Igor, 110 group, 7 - 4');
    assign(all, 'course.bin');
    assign(ans, 'ans.txt');
    analys(all, ans);
    writeln('done...')
end.
