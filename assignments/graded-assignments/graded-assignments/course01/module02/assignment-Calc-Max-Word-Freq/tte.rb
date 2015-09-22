 content = 'text.txt'
 @highest_wf_words=[]
    @highest_wf_count=[]
    palabras=Hash.new(0)
    content.split.each{|word| palabras[word] += 1}
    @highest_wf_count=palabras.values.max
    @highest_wf_words << palabras.map{ |k,v| v==@highest_wf_count ? k : nil }.compact