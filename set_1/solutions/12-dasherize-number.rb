#Jordan
def dasherize_number(num)
  num_s = num.to_s

  result = ""

  idx = 0
  while idx < num_s.length
    digit = num_s[idx].to_i

    if (idx > 0)
      prev_digit = num_s[idx - 1].to_i
      if (prev_digit % 2 == 1) || (digit % 2 == 1)
        result += "-"
      end
    end
    result += num_s[idx]

    idx += 1
  end

  return result
end


# Joe & Mark
def dasherize_number(num)
  num = num.to_s.split('')
  fresh = []

  num.each do |x|
    if x.to_i % 2 == 1
      if fresh[-1] != '-'
        fresh.push("-")
      end
      fresh.push(x)
      fresh.push("-")
    else
      fresh.push(x)
    end
  end

  if fresh[0] == '-'
    fresh.shift
  end

  if fresh[-1] == '-'
    fresh.pop
  end

  fresh.join
end

# Iciar & Dan

def dasherize_number(num)
  result = num.to_s.chars.map! do |n|
    !(n.to_i % 2 == 0) ? n = "-#{n}-" : n = n
  end.join
  result[-1] = "" if result[-1] == "-"
  result[0] = "" if result[0] == "-"
  result.chars.each_index do |i|
    result[i] = "" if result[i] == "-" && result[i+1] == "-"
  end
result
end
