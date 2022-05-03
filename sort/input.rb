def input(sort_method_name)
  puts '並び替えたい数値をカンマ区切りで入力してください。(例: 10, 1, 5, 2, 3)'
  values = gets.chomp.split(',').map(&:to_i)
  raise ArgumentError, 'Rubyの配列形式で入力してください。' if values.nil? || values.size == 0 || !values.is_a?(Array)

  puts '並び順を指定してください。昇順なら1、降順なら2 [1/2]: '
  sort_number = gets.chomp.to_i
  raise ArgumentError, '1か2を入力してください。' unless [1, 2].include?(sort_number)

  is_asc = sort_number == 1

  puts '---------------------------------'
  puts "整列前の値: #{values.inspect}"
  puts "並び順: #{is_asc ? '昇順' : '降順' }"
  puts '---------------------------------'

  puts "整列後の値: #{send(sort_method_name, values, is_asc)}"
end
