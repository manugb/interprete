class VirtualTable

  def initialize
    @dictonary = {}
  end

  def lookup key
    @dictonary[key]
  end

  def addMetodo nombre, mensaje
    @dictonary[nombre] = mensaje
  end
end