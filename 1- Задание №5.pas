program z_1_5;

const
  Sz = 10; 

var
  a: array[1..Sz] of Integer; 
  b: array[1..Sz] of Integer;
  i, minIndex, maxIndex: Integer;
  c: Boolean;

begin
  for i := 1 to Sz do
  begin
    a[i] := Random(51); // заполняем случайными числами
    b[i] := Random(51);
  end;

  writeln('Массив 1:');
  for i := 1 to Sz do
    write(a[i]:4);
  writeln;

  writeln('Массив 2:');
  for i := 1 to Sz do
    write(b[i]:4);
  writeln;

  c := False;
  for i := 1 to Sz do // Поиск кратного пяти элемента в массиве 1
  begin
    if (a[i] mod 5 = 0) then
    begin
      c := True;
      break;
    end;
  end;

  minIndex := 1;
  maxIndex := 1;

  for i := 2 to Sz do
  begin
    if a[i] < a[minIndex] then
      minIndex := i;

    if a[i] > a[maxIndex] then
      maxIndex := i;
  end;

  // изменение массива 1 в соответствии с условиями
  if c then
    a[maxIndex] := 0;

  // Вывод измененнго массива 1
  writeln('Измененный массив 1:');
  for i := 1 to Sz do
    write(a[i]:4);
  writeln;

  // Поиск минимального элемента в массиве 2
  minIndex := 1;

  for i := 2 to Sz do
  begin
    if b[i] < b[minIndex] then
      minIndex := i;
  end;

  // Умножение на 2 всех элементов массива 2, расположенных после минимального
  for i := minIndex + 1 to Sz do
    b[i] := b[i] * 2;

  // Вывод измененного массива 2
  writeln('Измененный массив 2:');
  for i := 1 to Sz do
    write(b[i]:4);
  writeln;

  readln;
end.
