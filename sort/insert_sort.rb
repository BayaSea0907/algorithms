# インサートソート、基本挿入法
# ポイント:
#   ・確定した値(整列済みの値)のどの位置に挿入できるか判定して入れ替える方法
#   ・配列の先頭の要素から値を確定していき、ループの範囲を狭めていく
def insert_sort(values, is_asc = true)
  sorted_values = values.dup
  n = values.size
  i = 0

  while(i < (n - 1)) do
    j = i + 1

    while(j > 0) do
      sort_completed = if is_asc
                         sorted_values[j - 1] <= sorted_values[j]
                       else
                         sorted_values[j - 1] >= sorted_values[j]
                       end
      break if sort_completed

      puts "i:#{i}, j:#{j}, sorted_values:#{sorted_values}"

      is_change = if is_asc
                    sorted_values[j - 1] > sorted_values[j] # 昇順
                  else
                    sorted_values[j - 1] < sorted_values[j] # 降順
                  end
      if is_change
        tmp = sorted_values[j - 1]
        sorted_values[j - 1] = sorted_values[j]
        sorted_values[j] = tmp
      end

      j -= 1
    end

    i += 1
  end

  sorted_values
end

require './input'

input('insert_sort')
