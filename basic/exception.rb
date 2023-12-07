module MyException
  class << self
    def hello(name)
      if !name.is_a?(String)
        raise ArgumentError, "Argument is not a String"
      end

      "hello, #{name}!"
    end
  end
end
