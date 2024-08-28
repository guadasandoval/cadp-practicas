// Realizar un programa que lea 10 números enteros e informe la suma total de los números leídos.
// a. Modifique el ejercicio 1 para que además informe la cantidad de números mayores a 5.

program ejercicio1;
var i, num, total: integer;

begin
    total:=0;
    for i:=1 to 10 do
    read(num)
    total := total + num;
    write(total)
end;

program ejercicio1a;
var i, num, total, mayor5: integer;

begin
    total:=0;
    for i:=1 to 10 do
    read(num)
    total := total + num;
    
    if(num > 5) then
    mayor5:= mayor5 + 1;

    write(total)
    write(mayor5)
end;

// Realice un programa que lea 10 números e informe cuál fue el mayor número leído. Por ejemplo: si se lee la
// secuencia: 3 5 6 2 3 10 98 8 -12 9, deberá informar:
// El mayor número leído fue el 98
// a. Modifique el programa anterior para que, además de informar el mayor número leído, se informe el
// número de orden, dentro de la secuencia, en el que fue leído. Por ejemplo: si se lee la misma
// secuencia: 3 5 6 2 3 10 98 8 -12 9, deberá informar:
// El mayor número leído fue el 98, en la posición 7

program ejercicio2;
var i, num, max, pos: integer;

begin
    max := -1
    pos := 0
    for i:=1 to 10 do
    read(num);
    if(num > max) then
    max := num;
    pos:= i;

    write('El mayor número leído fue el', max)
    write('En la posicion', pos)
end;

// Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera Analista en
// TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA (la nota es un número entre 1 y 10).
// La lectura finaliza cuando se lee el nombre “Zidane Zinedine“, que debe procesarse. Al finalizar la lectura
// informar:
// ● La cantidad de alumnos aprobados (nota 8 o mayor).
// ● La cantidad de alumnos que obtuvieron un 7 como nota

program ejercicio3;
type notas = (1...10);
var nombre: string;
var nota: notas;
var mayor8, nota7: integer;

begin
    nota7 := 0;
    mayor8 := 0;

    repeat
    read(nombre);
    read(nota);
    if(nota >= 8) then
    mayor8 := mayor8 + 1;
    if(nota = 7) then
    nota7 := nota7 + 1; 

    until (nombre = 'Zidane Zinedine');

    writeln('La cantidad de alumnos aprobados (nota 8 o mayor)', mayor8);
    write('La cantidad de alumnos que obtuvieron un 7 como nota', nota7)
end;

// Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son los dos
// números mínimos leídos.
// a. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer el
// número 0, el cual debe procesarse.
// b. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer el
// número 0, el cual no debe procesarse

program ejercicio4;
var i, num, min1, min2: integer;

begin
    min1:= 999;
    min2:= 999;
    for i:=0 to 1000 do
    read(num)
    if(num < min1) then
    num2 := num1; 
    min1 := num;
    end;
    else if(num < min2) then
    min2 := num
    end;

    write('los dos números mínimos leídos son:', num1, num2)
end;

program ejercicio4a;
var i, num, min1, min2: integer;

begin
    min1:= 999;
    min2:= 999;
    repeat
    read(num)
    if(num < min1) then
    num2 := num1; 
    min1 := num;
    end;
    else if(num < min2) then
    min2 := num
    end;
    until num = 0
    write('los dos números mínimos leídos son:', num1, num2)
end;

program ejercicio4b;
var i, num, min1, min2: integer;

begin
    min1:= 999;
    min2:= 999;
    while(num <> 0)
        read(num)
        if(num < min1) then
        num2 := num1; 
        min1 := num;
        end;
        else if(num < min2) then
        min2 := num
        end;
    end;
    write('los dos números mínimos leídos son:', num1, num2)
end;

// Realizar un programa que lea números enteros desde teclado. La lectura debe finalizar cuando se ingrese el
// número 100, el cual debe procesarse. Informar en pantalla:
// ● El número máximo leído.
// ● El número mínimo leído.
// ● La suma total de los números leídos.

program ejercicio5;
var num, max, min, total: integer;

begin
    max := -1;
    min := 999;
    total := 0;

    repeat
        read(num);
        if(num >= max) then
        max := num
        if(num <= min) then
        min := min
        total := total + num;
    until (num = 100);

    write('El número máximo leído: ', max);
    write('El número mínimo leído: ', min);
    write('La suma total de los números leídos', total)
end;

// Realizar un programa que lea información de 200 productos de un supermercado. De cada producto se lee
// código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
// ● Los códigos de los dos productos más baratos.
// ● La cantidad de productos de más de 16 pesos con código par.

program ejercicio6;

type codigos = 1...200;
var codProd: codigos;
var precio: real;
var barato1, barato2, cantProdPar: integer;

begin
    cantProdPar := 0
    barato1 := 999;
    barato2 := 999;

    for i:=0 to 200 do
        read(codigo)
        read(precio)
            if(precio <= barato1) then
            barato2 := barato1;
            barato1 := codigo;
            else if(precio <= barato2) then
            barato2 := codigo
            end;
        if(codigo MOD 2 = 0 AND precio > 16) then
        cantProdPar := cantProdPar + 1;
    end;
    write('Los códigos de los dos productos más baratos', barato1, barato2)
    write('La cantidad de productos de más de 16 pesos con código par', cantProdPar)
end;

// Realizar un programa que lea desde teclado información de autos de carrera. Para cada uno de los autos se
// lee el nombre del piloto y el tiempo total que le tomó finalizar la carrera. En la carrera participaron 100
// autos. Informar en pantalla:
// ● Los nombres de los dos pilotos que finalizaron en los dos primeros puestos.
// ● Los nombres de los dos pilotos que finalizaron en los dos últimos puestos.

program ejercicio7;
var nombrePiloto, primerPiloto, segundoPiloto, anteultimoPiloto, ultimoPiloto: string;
var tiempo, tiempoMin1, tiempoMin2, tiempoMax1, tiempoMax2: real;
var i: integer;

begin
    tiempoMin2 := 999.9;
    tiempoMin1 := 999.9;
    tiempoMax2 := -1.0:
    tiempoMax1 := -1.0;
    primerPiloto := '';
    segundoPiloto := '';
    anteultimoPiloto := '';
    ultimoPiloto := '';

    for i:= 0 to 100 do
        read(nombrePiloto)
        read(tiempo)
        if(tiempo <= tiempoMin1) then
        tiempoMin2 := tiempoMin1;
        tiempoMin1 := tiempo
        segundoPiloto := primerPiloto;
        primerPiloto := nombre;
        else if(tiempo >= tiempoMax1) then
        tiempoMax2 := tiempoMax1;
        tiempoMax1 := tiempo;
        ultimoPiloto := anteultimoPiloto;
        anteultimoPiloto := nombre;
    end;
    write('Los nombres de los dos pilotos que finalizaron en los dos primeros puestos', primerPiloto, segundoPiloto)
    write('Los nombres de los dos pilotos que finalizaron en los dos últimos puestos', anteultimoPiloto, ultimoPiloto)
end;

// Un local de ropa desea analizar las ventas realizadas en el último mes. Para ello se lee por cada día del mes,
// los montos de las ventas realizadas. La lectura de montos para cada día finaliza cuando se lee el monto 0. Se
// asume un mes de 31 días. Informar la cantidad de ventas por cada día, y el monto total acumulado en ventas
// de todo el mes.
// a. Modifique el ejercicio anterior para que además informe el día en el que se realizó la mayor cantidad
// de ventas.