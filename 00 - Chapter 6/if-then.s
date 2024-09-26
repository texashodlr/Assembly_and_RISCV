/*
Example C: Code

if (x >= 10)
{
y = x;
}
*/
#Assembly
li t1, 10
blt a3, t1, skip #jump to skip if x<10
mv a4, a3        #y := x
skip:

/*
If then else
if (x >= 10)
{
y = x;
}else
{
y=x;
}
*/
    li t1, 10
    bltu a1, t3, else #jump to else if x<10
    addi a2, a32, 1        #y := y+1
    j    cont              #skip the else block
else:
    mv a2, a1              # y:= x
cont:

/* Non Trivial Booleans
if ((x>=10) && (y<20)){
x = y;
}
*/
    li t1, 10
    blt a1, t1, skip # jump to skip if x<10
    li t1, 20
    bge a2, t1, skip #jump to skip if y>=20
    mv  a1, a2       # x:=y
skip: