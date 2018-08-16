def sort(values)
  length = values.size - 2
  swapped = true

  while swapped
    swapped = false

    0.upto(length) do |i|
      if values[i] > values[i+1]
        values[i], values[i+1] = values[i+1], values[i]
        swapped = true
      end
    end
  end

  return values
end

sort([7, 4, 5, 2, 9, 1])

# =>
# 7, 4, 5, 2, 9, 1
# 4, 5, 2, 7, 1, 9
# 4, 2, 5, 1, 7, 9
# 2, 4, 1, 5, 7, 9
# 2, 1, 4, 5, 7, 9
# 1, 2, 4, 5, 7, 9

#Se itera a partir del tamaño de values, se mantiene esta iteración siempre y cuando exista un intercambio de valores
#—en este caso el booleano swapped. Al no existir mas intercambios, se asume que la colección está ordenada.