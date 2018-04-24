#定数を宣言する
#set 定数名 値 -option constant で、上書き不可な定数を宣言できる。
set CONSTANT_VALUE "hoge" -option constant

echo $CONSTANT_VALUE

$CONSTANT_VALUE = "fuga"