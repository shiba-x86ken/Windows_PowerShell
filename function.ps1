#関数の定義

#基本
#function 関数名 {} で関数を定義できる。
#関数は、実行する場所より前で定義されている必要がある。
function Hoge {
    echo "hoge"
}
Hoge

#引数を定義する
#関数に引数を定義する場合は、関数名の後に丸括弧で宣言する。
#関数を実行する際は、半角スペース区切りで引数を渡す。
#半角スペースでなくカンマ区切りにしてしまうと、配列になってしまうので注意。
function Hoge($a, $b) {
    echo ('$a = ' + $a + ", $b = " + $b)
}
Hoge 'aaa' 'bbb'

#全ての引数を取得する
#$args を参照することで、全ての引数を取得できる。
function Hoge {
    echo ('$args = ' + $args)
}
Hoge 'aaa' 'bbb' 'ccc'

#引数のデフォルト値を設定する
#引数 = 初期値 と宣言することで、引数が省略された場合の初期値を設定できる。
function Hoge($a, $b=10) {
    echo ('$a = ' + $a + ', $b = ' + $b)
}

Hoge
Hoge "aaa"
Hoge "aaa" "bbb"

#名前指定で引数を渡す
#-変数名 値 という形で、名前指定で引数を渡せる。
#名前指定の場合、引数の順序はバラバラでも構わない。
function Hoge($a, $b) {
    echo ('$a = ' + $a + ', $b = ' + $b)
}

Hoge -a "hoge" -b "fuga"

#戻り値
#関数内で出力された内容は、全て呼び出し元に戻り値として返される。
#関数内の echo は、画面には出力されず、戻り値として返されている。
#return を使って、値を返すこともできる。
#return を使った場合、その時点で関数の実行は停止され、その関数内の後続処理は実行されなくなる。
function Hoge {
    echo "HOGE"
    return "hoge"
}

$result = Hoge

echo "=================="
echo $result
echo "=================="

#変数のスコープ
#関数内で宣言した変数の値は、外部からは参照できない。
#関数内部では、関数外部で宣言した変数を参照できる。
#関数外部で宣言されているものと同名の変数を関数内部で上書きしても、関数外部からは関数内部で代入した値を参照できない。
#おそらく、変数が隠蔽されている。
$a = "aaa"

function Hoge($b = "bbb") {
    echo ('$a = ' + $a + ' @ Hoge')
    $a = "aaaaa"
    $c = "ccc"
    echo ('$a = ' + $a + ' @ Hoge')
}


Hoge

echo ('$a = ' + $a)
echo ('$b = ' + $b)
echo ('$c = ' + $c)

#定数を宣言する
#set 定数名 値 -option constant で、上書き不可な定数を宣言できる。
set CONSTANT_VALUE "hoge" -option constant

echo $CONSTANT_VALUE

$CONSTANT_VALUE = "fuga"