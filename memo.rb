require "csv" 

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i 

if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp
  
  CSV.open("#{file_name}.csv","w") do |csv|
    puts "メモしたい内容を記入してください"
    puts "完了したらctrl+Dを押します"
    memo = gets.chomp
    csv << [memo]
  end
  
elsif memo_type == 2
    puts "拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp
    
    CSV.open("#{file_name}.csv","a") do |csv|
      puts "メモしたい内容を入力してください"
      puts "完了したらctrl+Dを押します"
      memo = gets.chomp
      csv << [memo]
    end
    
  else
    puts "1か2で入力してください！"
end