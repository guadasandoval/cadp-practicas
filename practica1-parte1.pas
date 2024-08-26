// Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los dos
// números es el mayor. Si son iguales debe informar en pantalla lo siguiente:
// Los números leídos son iguales

program ejercicio1;
var num1, num2: integer;

begin
    num1:=0;
    num2:=0;
    read(num1);
    read(num2);
    if(num1>num2) do begin
    write(num1);
    else if (num2>num1) do begin
    write(num2);
    else
    begin
        write('Los números leídos son iguales')
    end;

end;

// Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un número
// X, se escribe |X| y se define como:
// |X| = X cuando X es mayor o igual a cero
// |X| = -X cuando X es menor a cero

program ejercicio2;
var numX: real;

begin
    read(numX)
    if (numX>0) then
    write(numX);
    else
    begin
        numX := numX*(-1)
        write(numX)
    end;
    
end;

// Realizar un programa que lea 3 números enteros y los imprima en orden descendente. Por ejemplo: si se
// ingresan los valores 4, -10 y 12, deberá imprimir: 12 4 -10

program ejercicio3;
var num1, num2, num3, max: integer;

begin
    read(num1)
    read(num2)
    read(num3)

    if(num1 > num2) then
end;

// Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se ingrese
// uno cuyo valor sea exactamente el doble de X (el primer número leído).

program ejercicio4;
var numX, num: real;

begin
    num:=0;
    read(numX);
    while(num != 2*numX) do begin
        read(num)
    end;
end;

// Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números reales.
// La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo número, en cuyo
// caso deberá informarse: No se ha ingresado el doble de X

program ejercicio5;
var numX, num: real;
var cant: integer;

begin
    num:=0;
    cant:= 0;
    read(numX);
    while(num != 2*numX OR cant<= 10) do begin
        read(num)
        cant:= cant + 1
    end;
        
end;

// Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La lectura
// finaliza cuando se ingresa el legajo -1, que no debe procesarse. Por ejemplo: se lee la siguiente secuencia:
// 33423
// 8.40
// 19003
// 6.43
// -1
// En el ejemplo anterior, se leyó el legajo 33422, cuyo promedio fue 8.40, luego se leyó el legajo 19003, cuyo
// promedio fue 6.43, y finalmente el legajo -1 (para el cual no es necesario leer un promedio).
// Al finalizar la lectura, informar:
// a. La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2).
// b. La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar 1).
// c. El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean menor
// al valor 2500 (en el ejemplo anterior, se debería informar 0%)

program ejercicio6;

var numLegajo, cantAlumnos, masPromedio, destacados: integer;
var promedio: real;

begin
    cantAlumnos := 0;
    masPromedio := 0;
    destacados := 0;

    read(numLegajo)
    while(numLegajo != -1) do
    begin
        read(promedio)
        cantAlumnos := cantAlumnos + 1
        if (promedio > 6.5) then
        begin
            masPromedio := masPromedio + 1
        end;
        if(promedio > 8.5 AND numLegajo < 2500) then
        begin
            destacados := (destacados + 1) * 100
        end;
    end;

    write(cantAlumnos)
    write(masPromedio)
    write(destacados)
end;

// Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un almacén.
// La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse. Para cada producto
// leído, el programa deberá indicar si el nuevo precio del producto supera en un 10% al precio anterior.

program ejercicio8;

var codigo: integer:
var precioActual, nuevoPrecio: real;

begin
    read(codigo)
    repeat
        read(precioActual)
        read(nuevoPrecio)
        if(nuevoPrecio > (precioActual* 0.10 + precioActual)) then
        write('el nuevo precio del producto supera en un 10% al precio anterior')
    until (codigo = 32767);
        read(precioActual)
        read(nuevoPrecio)
end;

// Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos uno de
// ellos no lo era. Por ejemplo:
// ○ Si se leen los caracteres “a e o”, deberá informar: Los tres son vocales
// ○ Si se leen los caracteres “z a g”, deberá informar: Al menos un carácter no era vocal

program ejercicio8;
var car1, car2, car3: char;

begin
    read(car1)
    read(car2)
    read(car3)

end;

// Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro carácter,
// debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse una secuencia
// de números enteros que finaliza con 0. El programa deberá aplicar la operación leída con la secuencia de
// números, e imprimir el resultado final.

program ejercicio9;
var car: char;
var num: integer;

begin
    read(car);
    while(car != '+' OR car != '-') do begin
        read(num)
        while(num != 0) do begin
        if(car = '+') then
            final := final + num;
        else
        begin
            final:= final - num;
        end;
        end;
    end;
    write('Hubo un error')
end;