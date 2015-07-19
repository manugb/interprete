require "./requires.rb"

class Test

  def new_object
    yourself = Metodo.new :yourself
    metodo_self = Self.new
    yourself.add_statement metodo_self

    foo = Metodo.new :foo, [:pepe]
    enviar_yourself = EnvioMensaje.new(DevolverArg.new(:pepe), :yourself)
    foo.add_statement enviar_yourself

    vtable = VirtualTable.new
    vtable.add_metodo :foo, foo
    vtable.add_metodo :yourself, yourself

    obj = Objeto.new vtable
  end

  def primer_test
    o1 = new_object
    o2 = new_object

    res = o1.send :foo, [o2]
    res == o2
  end
end

t = Test.new
puts t.primer_test
