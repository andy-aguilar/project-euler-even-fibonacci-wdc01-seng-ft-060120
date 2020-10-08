# Implement your object-oriented solution here!
class EvenFibonacci
    attr_reader :limit
    def initialize(limit)
        @limit = limit
    end

    def sum
        n = [1,2]
        array = []
        while n[0] < limit do
            n << n.reduce(:+)
            if n[0] % 2 === 0
                array << n[0]
            end
            n.shift
        end
        return array.reduce(:+)
    end
end