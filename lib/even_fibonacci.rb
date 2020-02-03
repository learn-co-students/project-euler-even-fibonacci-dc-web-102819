# Implement your procedural solution here!

def fibonacci_builder(limit)
    numArray = [1, 2]
    while numArray[-1] + numArray[-2] <= limit
        numArray.push(numArray[-1] + numArray[-2])
    end
    numArray
end

def even_fibonacci_sum(limit)
    fibonacci_builder(limit).reduce(0) {|memo, num| num % 2 == 0 ? memo + num : memo }
end