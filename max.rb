def max_subsum(numbers)
    (1..numbers.size).inject([]) { |l, s| l + numbers.enum_cons(s).to_a }.sort_by { |
b| [b.inject { |s, e| s + e }, -b.size] }.last
end