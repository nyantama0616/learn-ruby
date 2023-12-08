module WordSynth
  module Effect
    class << self
      def reverse
        ->(words) do
          words.split(" ").map(&:reverse).join(" ")
        end
      end

      def echo(n)
        ->(words) do
          words.chars.map { |c| c == " " ? c : c * n }.join
        end
      end

      def loud(n)
        ->(words) do
          words.split(" ").map { |word| word.upcase + "!" * n }.join(" ")
        end
      end
    end
  end
end
