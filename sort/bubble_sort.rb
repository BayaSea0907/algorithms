# バブルソート、基本交換法、隣接交換法　などの呼び方がある
# ポイント:
#   ・隣り合う値を比較して、期待した順序(昇順,降順)になっていなければ入れ替える
#   ・配列の末尾の要素から値を確定していき、ループの範囲を狭めていく
def bubble_sort(values, is_asc = true)
  sorted_values = values.dup
  n = values.size
  i = n - 1 # 配列の添字は0からスタートするので、要素数-1を指定

  while(i > 0) do
    j = 0
    while(j <= (i - 1)) do
      puts "i:#{i}, j:#{j}, sorted_values:#{sorted_values}"

      is_change = if is_asc
                    sorted_values[j] > sorted_values[j + 1]
                  else
                    sorted_values[j] < sorted_values[j + 1]
                  end

      if is_change
        tmp = sorted_values[j]
        sorted_values[j] = sorted_values[j + 1]
        sorted_values[j + 1] = tmp
      end

      j += 1
    end

    i -= 1
  end

  sorted_values
end

require './input'

input('bubble_sort')
