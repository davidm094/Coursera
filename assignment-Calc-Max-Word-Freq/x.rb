x="a a a a a a a a a a b b b b b b c c c c"

highest_wf_count ||=0
x.split.each do |word| 
  highest_wf_words=word if highest_wf_count +=1 > highest_wf_count
  highest_wf_count +=1
 end
puts highest_wf_words
puts highest_wf_count