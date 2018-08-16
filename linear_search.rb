#Búsqueda linear
#Este es un algortimo de búsqueda básico.
#Se itera sobre una colección o una estructura de datos hasta encontrar un valor que coincida

def findIndex(values, target)
  values.each_with_index do |value, i|
    return i if value == target
    puts i #Imprimira 0 y 1
  end
end

# En este caso el valor a encontrar es el 15 en el indice 2
findIndex([4, 8, 15, 16, 23, 42], 15)