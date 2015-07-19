class Metodo
  def initialize nombre, args = []
    @nombre = nombre
    @args = args
    @statements = []
  end

  def add_statement statement
    @statements << statement
  end

  def execute esto, args = []
    contexto = {}
    contexto[:esto] = esto
    arguments = {}
    @args.each_with_index do |a, index|
      arguments[a] = args[index]
    end
    contexto[:args] = arguments
    res = nil
    @statements.each do |s|
      res = s.execute contexto
    end
    res
  end
end

