# セレクトソート、基本選択法　などの呼び方がある
# ポイント:
#   ・最小(または最大)の要素を探して入れ替える
#   ・配列の先頭の要素から値を確定していき、ループの範囲を狭めていく
def select_sort(values, is_asc = true)
  sorted_values = values.dup
  n = values.size
  i = 0

  while(i < (n - 1)) do
    j = i + 1
    min_or_max_idx = i

    while(j < n) do
      found_min_or_max = if is_asc
                           sorted_values[j] < sorted_values[min_or_max_idx] # 昇順
                         else
                           sorted_values[j] > sorted_values[min_or_max_idx] # 降順
                         end
      min_or_max_idx = j if found_min_or_max

      j += 1
    end

    puts "i:#{i}, j:#{j}, sorted_values:#{sorted_values}"

    tmp = sorted_values[i]
    sorted_values[i] = sorted_values[min_or_max_idx]
    sorted_values[min_or_max_idx] = tmp

    i += 1
  end

  sorted_values
end

require './input'

input('select_sort')
