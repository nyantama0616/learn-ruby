require_relative "fizz_buzz"

describe "fizz_buzz" do
  context "when x is multiple of 3" do
    it "6" do
      expect(fizz_buzz(6)).to eq "Fizz"
    end
    
    it "9" do
      expect(fizz_buzz(9)).to eq "Fizz"
    end
  end

  context "when x is multiple of 5" do
    it "10" do
      expect(fizz_buzz(10)).to eq "Buzz"
    end
    
    it "20" do
      expect(fizz_buzz(20)).to eq "Buzz"
    end
  end

  context "when x is multiple of 15" do
    it "30" do
      expect(fizz_buzz(30)).to eq "FizzBuzz"
    end
    
    it "45" do
      expect(fizz_buzz(45)).to eq "FizzBuzz"
    end
  end

  context "when x is not multiple of 3 nor 5" do
    it "1" do
      expect(fizz_buzz(1)).to eq "1"
    end

    it "92" do
      expect(fizz_buzz(92)).to eq "92"
    end
  end
end
