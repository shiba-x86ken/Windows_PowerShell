﻿#基本
#Param() スクリプトレットを使用することで、コマンドラインから入力された引数を取得できる。
#引数の型を宣言することもできる。
Param([string] $one, $two)

echo ($one + ", " + $two)