class Objeto
  
  def initialize vtable
    @vtable = vtable
  end

  def send mensaje, args
    metodo = @vtable.lookup(mensaje)
    metodo.execute self, args
  end
end