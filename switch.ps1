$num = 5

switch ($num) {
    1 {
        echo "hoge"
    }
    5 {
        echo "fuga"
    }
    10 {
        echo "piyo"
    }
}

#条件に文字列を使用する
#文字列も OK。
#条件に一致するブロックが複数存在する場合は、全てのブロックが実行される。
$str = "hoge"

switch ($str) {
    "hoge" {
        echo "HOGE"
    }
    "fuga" {
        echo "FUGA"
    }
    "hoge" {
        echo "Hoge"
    }
}

#条件に変数を使用する
$value = 1
$c1 = 1
$c2 = 2
$c3 = 3

switch ($value) {
    $c1 {
        echo "one"
    }
    $c2 {
        echo "two"
    }
    $c3 {
        echo "three"
    }
}

#条件にワイルドカードや正規表現を使用する
#switch の後ろに -wildcard と指定することで、条件のマッチングにワイルドカードを使用できる。
# -regex と指定すれば、正規表現でマッチングできる。

switch -wildcard ("hoge") {
    "h*" {
        echo "Hoge"
    }
    "f*" {
        echo "Fuga"
    }
}