if ($true) {
    echo "hoge"
}

if ($false)  {
    echo "fuga"
}

#True と判断されるもの
#その型の変数を宣言したとき、デフォルトで設定される値は False と判断される。
#それ以外の値は True と判断される。
if (1) {
    echo "aaa"
}
if (0) {
    echo "bbb"
}
if ("") {
    echo "ccc"
}
if ("x") {
    echo "ddd"
}
if ($null) {
    echo "eee"
}

#else 文
#elseif (条件) で、異なる条件を追加できる。
#else で、どの条件にも当てはまらなかった場合の処理を定義できる。
if ($true) {
    #...
} elseif ($false) {
    #...
} else {
    #...
}

#比較演算
#演算子	Java で言うと
#-eq	==
#-ne	!=
#-gt	>
#-ge	>=
#-lt	<
#-le	<=

#数値

if ("hoge" -eq "hoge") {
    echo "HOGE"
}

if (10 -gt 10) {
    echo "FUGA"
}

if (10 -ge 10) {
    echo "PIYO"
}

#文字
#-like で、ワイルドカードを使った文字列比較。
#-match で、正規表現を使った文字列比較ができる。
#それぞれ、前に not が追加された否定形がある（-notlike, -notmatch）。
if ("hoge" -like "h*") {
    echo "HOGE"
}

if ("fuga" -like "??ge") {
    echo "FUGA"
}

if ("piyo" -match "[a-z]+") {
    echo "PIYO"
}

#論理演算
#演算子	Java で言うと
#-and	&&
#-or	||
#-not, -!	!

if ($true -and $true -and ($true -or $false) -and -not $false -and -! $false) {
    echo "HOGE"
}