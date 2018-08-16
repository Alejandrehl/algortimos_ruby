#A diferencia de Bubble Sort, este algoritmo inserta el valor iterado en el lugar correcto en base de sus
#ancestros haciendo una comparación con cada uno.

def sort(values)
  length = values.size - 1

  1.upto(length) do |i|
    temp = values[i]
    j = i - 1

    while j >= 0 and values[j] > temp
      values[j+1] = values[j]
      j -= 1
    end

    values[j+1] = temp
  end

  return values
end

puts sort([7, 4, 5, 2, 9, 1])

# =>
# 4, 7, 5, 2, 9, 1
# 4, 5, 7, 2, 9, 1
# 2, 4, 5, 7, 9, 1
# 2, 4, 5, 7, 9, 1
# 1, 2, 4, 5, 7, 9

#Se itera a partir del elemento 1 (0, 1, 2, …) y se compara con el anterior buscando si es posible realizar un intercambio.
#En la siguiente iteración, se verificarán los anteriores para realizar el intercambio con el valor correcto para esa iteración.