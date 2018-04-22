$array = "hoge", "fuga", "piyo"

echo $array.GetType().Name
echo ($array[0] + ", " + $array[1] + ", " + $array[2])

#空の配列
$array_space = @()

echo $array_space.Length

#連続した数値の入った配列を簡潔に定義
$array_continuity = 1..10

echo ('$array_continuity = ' + $array_continuity)

#foreach(反復)
#foreath (変数 in 配列)
foreach ($i in @(1, 2, 3, 4)) {
    echo $i
}

#Associative array（連想配列）
$map = @{hoge = "HOGE"; fuga = "FUGA"; piyo = "PIYO"}

echo $map.GetType().Name
echo ("hoge = " + $map["hoge"])
echo ("fuga = " + $map.Item("fuga"))