```bash
#!/bin/bash

number1=10
number2=20

plus=`expr $number1 + $number2`
minus=`expr $number1 - $number2`
mul=`expr $number1 \* $number2`
div=`expr $number1 / $number2`
rem=`expr $number1 % $number2`


echo "plus:     ${plus}"
echo "minus:    ${minus}"
echo "mul:      ${mul}"
echo "div:      ${div}"
echo "rem:      ${rem}"
```