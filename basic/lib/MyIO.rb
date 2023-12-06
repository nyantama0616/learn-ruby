module MyIO
  def self.input(message = "")
    print prompt(message)
    gets
  end

  def self.prompt(message)
    "#{message} > "
  end
end
