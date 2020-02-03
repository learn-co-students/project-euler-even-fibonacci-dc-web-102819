# Implement your object-oriented solution here!

class EvenFibonacci

    attr_accessor :limit

    def initialize(limit)
        @limit = limit
    end

    def sum
        fibonacci = [1, 2]
        while fibonacci[-1] + fibonacci[-2] <= self.limit
            fibonacci.push(fibonacci[-1] + fibonacci[-2])
        end

        fibonacci.reduce(0) {|memo, num| num % 2 == 0 ? memo + num : memo }
    end

end
