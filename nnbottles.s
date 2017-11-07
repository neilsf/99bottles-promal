program ninetyninebottles
include library

byte bottlescount

proc printbottletext
arg byte cnt
arg byte iscapital
begin
if cnt = 0
  if iscapital = 0
    put "no "
  else
    put "No "
  put "more bottles"
else
  output "#W bottle", cnt
  if cnt > 1
    put "s"
put " of beer"
end

proc printoddline
arg byte cnt
begin
printbottletext cnt, 1
put " on the wall, "
printbottletext cnt, 0
put ".", nl
end

proc printevenline
arg byte cnt
begin
put "Take one down and pass it around, "
printbottletext cnt, 0
put " on the wall.", nl
put nl
end

begin

bottlescount = 99
while bottlescount > 0
  printoddline bottlescount
  bottlescount = bottlescount-1  
  printevenline bottlescount

printoddline bottlescount
put "Go to the store and buy some more, "
printbottletext 99, 0
put "on the wall.", nl

end
