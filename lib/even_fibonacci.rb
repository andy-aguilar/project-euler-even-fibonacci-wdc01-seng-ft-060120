# Implement your procedural solution here!
def even_fibonacci_sum(limit)
    n = [1,2]
    array = []
    while n[0] < limit do
        if n[0] % 2 === 0
            n << n.reduce(:+)
            array << n.shift
        else
            n << n.reduce(:+)
            n.shift
        end
    end
    return array.reduce(:+)
end