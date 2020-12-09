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
    list = ^node;
    node = record
        elem: TE;
        next: list
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

procedure inlist(var students: list; E: stud);
var
    p: list;
begin
    if students = nil then begin
        new(students);
        students^.elem := E;
        students^.next := nil
    end else if E.fn.fam <= students^.elem.fn.fam then begin
        new(p);
        p^.elem := E;
        p^.next := students;
        students := p
    end else
        inlist(students^.next, E)
end;

procedure infile(students: list; var ans: text);
var
    i: integer;
    p: list;
begin
    while students <> nil do begin
        with students^.elem, fn do begin
            write(ans, fam, ' ', name, '   ', sex, '   ');
            for i := 1 to 4 do 
                write(ans, marks[i], ' ');
            write(ans, marks[5])
        end;
        writeln(ans);
        p := students;
        students := students^.next;
        dispose(p)
    end;
end;

procedure analys(var all: course; var ans: text);
var
    students: list;
    student: stud;
begin
    reset(all);
    rewrite(ans);
    students := nil;
    while not eof(all) do begin
        read(all, student);
        if interest(student) then
            inlist(students, student)
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
