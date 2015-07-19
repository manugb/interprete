class EnvioMensaje
  def initialize receiver, mensaje, args = []
    @receiver = receiver
    @mensaje = mensaje
    @args = args
  end

  def execute contexto
    (@receiver.execute contexto).send @mensaje, @args
  end
end