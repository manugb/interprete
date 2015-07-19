class VirtualTable

  def initialize
    @dictonary = {}
  end

  def lookup key
    @dictonary[key]
  end

  def add_metodo nombre, mensaje
    @dictonary[nombre] = mensaje
  end
end