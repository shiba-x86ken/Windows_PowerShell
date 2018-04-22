$list = New-Object System.Collections.ArrayList

$list.Add("hoge")
$list.Add("fuga") > $null
[void]$list.Add("piyo")

echo ($list[0] + ", " + $list[1] + ", " + $list[2])

# New-Object コマンドレットを使用することで、 .NET Framework が提供する任意のクラスのインスタンスを生成できる。
#Add() メソッドのように戻り値が存在するメソッドを実行した場合、 PowerShell から実行すると return された値が標準出力に出力されてしまう。
#これを抑制するには、 $null にリダイレクトするか、 [void] をメソッド実行の前に追加する。