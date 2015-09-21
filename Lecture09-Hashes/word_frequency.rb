word_frequency = Hash.new(0) 

sentence = "A A A A A A A A WW WW WW WW WWW EEE E D " 

sentence.split.each do |word| 
  word_frequency[word.downcase] += 1 
end 

p word_frequency # => {"chicka" => 2, "boom" => 2}


