require "csv"
loop do
 
    puts "1(新規でメモを作成) 2(既存のメモ編集する)3(終了する)"
 
    memo_type = gets.chomp.to_s
 
 if memo_type == "1" then
   puts "1が選択されました"
   puts "拡張子名を除いたファイル名を入力してください"
   @filename = gets.chomp.to_s
   CSV.open("#{@filename}.csv","w")do |csv|
     puts "メモしたい内容を記入してください"
     puts "終了後、Ctrl + D　を押します。"
     csv << [$stdin.read]
     puts "保存しました"
   end
 
 elsif memo_type == "2" then
   puts "2が選択されました"
   puts "編集するファイル名を拡張子を除いて入力してください"
   @addfilename = gets.chomp.to_s
   CSV.open("#{@addfilename}.csv","a")do |csv|
   puts "追加するメモを記入してください"
   csv << [$stdin.read]
 end
 
 elsif memo_type == "3" then
   puts "終了します"
   break
 else
 end
 
 end