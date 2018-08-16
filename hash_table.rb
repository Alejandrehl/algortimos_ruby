#Tabla Hash
#El concepto básico de una tabla hash es insertar un valor en un bucket a partir de su valor hasheado

class HashTable

  def initialize size
    @size = size
    @buckets = Array.new(@size)
  end

  def add value
    index = hash(value)
    @buckets[index] = value
  end

  def hash value
    sum = 0
    0.upto(value.size-1) do |i|
      sum += value[i].ord -97
    end

    return sum % size
  end

end

hash = HashTable.new(3)
# => [nil, nil, nil]

hash.add('fear')
# => [nil, nil, "fear"]

hash.add('is the')
# => ["is the", nil, "fear"]

hash.add('little death')
# => ["is the", "little death", "fear"]

#La clase anterior acepta un valor size el cual se utiliza para crear un array de un tamaño fijo.
#Acto siguiente, al llamar add(value) en donde se hasheará el valor iterando sobre cada caracter,
#sumando su valor ascii a una variable temporal (restando 97) y haciendo un modulo a partir del tamaño del array.
#Esto nos devolverá el “lugar en el bucket ideal” que insertaremos con un index a nuestro bucket.
#El hasheo es tan simple que causará colisiones si el hash es igual al de otro valor,
#por lo cual reemplazará el espacio del anterior; esto es normal, así que tendremos que lidiar con ello.
#Una de las maneras de lidiar con colisiones es utilizar una Lista Enlazada