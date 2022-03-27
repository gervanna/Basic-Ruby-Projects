dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","i","own","part","partner","sit"]

def find_substrings(content, dictionary)
  results = Hash.new(0)
  text_lower = content.downcase
  
  dictionary.each do |word|
    matched = text_lower.scan(word).count
    if matched != 0
        results[word] = matched
    end
  end
  
  return results
  
end

puts find_substrings("Howdy partner, man, owns below zero", dictionary)