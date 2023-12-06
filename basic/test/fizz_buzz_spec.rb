require_relative "../fizz_buzz"

describe "fizz_buzz" do
  context "when x is multiple of 3" do
    it "returns Fizz" do
      expect(fizz_buzz(6)).to eq "Fizz"
      expect(fizz_buzz(9)).to eq "Fizz"
    end
  end

  context "when x is multiple of 5" do
    it "returns Buzz" do
      expect(fizz_buzz(10)).to eq "Buzz"
      expect(fizz_buzz(25)).to eq "Buzz"
      expect(fizz_buzz(35)).to eq "Buzz"
    end
  end

  context "when x is multiple of 15" do
    it "returns FizzBuzz" do
      expect(fizz_buzz(30)).to eq "FizzBuzz"
      expect(fizz_buzz(45)).to eq "FizzBuzz"
      expect(fizz_buzz(90)).to eq "FizzBuzz"
    end
  end

  context "when x is not multiple of 3 nor 5" do
    it "returns x.to_i" do
      expect(fizz_buzz(1)).to eq "1"
      expect(fizz_buzz(2)).to eq "2"
      expect(fizz_buzz(19)).to eq "19"
    end
  end
end
