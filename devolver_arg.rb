class DevolverArg
  def initialize nombre
    @nombre = nombre
  end

  def execute contexto
    contexto[:args][@nombre]
  end
end