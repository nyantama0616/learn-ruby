require_relative "../exception"

describe "exception" do
  it 'returns hello, #{name}!' do
    str = MyException.hello("World")
    expect(str).to eq("hello, World!")
  end

  it 'raises ArgumentError' do
    expect do
      str = MyException.hello(1)
    end.to raise_error(ArgumentError, "Argument is not a String")
  end
end
