require "./requires.rb"

class Test

  def newObject
    yourself = Metodo.new :yourself
    metodoSelf = Self.new
    yourself.addStatement metodoSelf

    foo = Metodo.new :foo, [:pepe]
    enviarYourself = EnvioMensaje.new(DevolverArg.new(:pepe), :yourself)
    foo.addStatement enviarYourself

    vtable = VirtualTable.new
    vtable.addMetodo :foo, foo
    vtable.addMetodo :yourself, yourself

    obj = Objeto.new vtable
  end

  def primerTest
    o1 = newObject
    o2 = newObject

    res = o1.send :foo, [o2]
    res == o2
  end
end

t = Test.new
puts t.primerTest
