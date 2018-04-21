#全ての引数を取得する
#$args という配列が格納された変数が暗黙で定義されており、これにコマンドラインから渡された引数が全て格納されている。
echo ("Type : " + $args.GetType().Name)
echo ("Length : " + $args.Length)
echo ('$args : ' + $args)