def translate str
  str.split.map{ |w| process(w) }.join(' ')
end

def process str
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels
  phoneme = %w[qu squ sch]

  if vowels.include?(str[0])
    return str + 'ay'
  elsif phoneme.include?(str[0..1]) 
    return str[2..-1] + str[0..1] + 'ay'
  elsif phoneme.include?(str[0..2])
    return str[3..-1] + str[0..2] + 'ay'  
  elsif consonants.include?(str[0]) && consonants.include?(str[1]) && consonants.include?(str[2])
    return str[3..-1] + str[0..2] + 'ay'
  elsif consonants.include?(str[0]) && consonants.include?(str[1])
    return str[2..-1] + str[0..1] + 'ay'
  elsif consonants.include?(str[0])
    return str[1..-1] + str[0] + 'ay'
  else
    return str 
  end
end

