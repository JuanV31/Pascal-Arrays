program arrays;
uses crt;
var
    personas: array [1..5, 1..3] of string;
    registrados,i: integer;

procedure registrar;
var
opc:char;
begin
    clrscr;
    repeat
    begin
        registrados:= registrados + 1;
        writeln('Ingrese el nombre de la persona ', registrados);
        readln(personas[registrados, 1]);
        writeln('Ingrese el apellido de la persona ', registrados);
        readln(personas[registrados, 2]);
        writeln('Ingrese el correo de la persona ', registrados);
        readln(personas[registrados, 3]);
        writeln('Desea salir? S/N');
        readln(opc);
    end;
    until ((registrados >= 5) or (opc = #83) or (opc = #115));
end;

procedure listar;
var
opc:char;
begin
    clrscr;
    for i:=1 to registrados do
    begin
        writeln('Persona ', i);
        writeln('Nombre: ',personas[i, 1]);
        writeln('Apellido: ',personas[i, 2]);
        writeln('Correo: ',personas[i, 3]);
        writeln();
    end;
end;
begin
    registrados:= 0;
    registrar();
    listar();
    readkey;
end.
