class LineAnalyzer
  attr_reader:highest_wf_count,:highest_wf_words,:content,:line_number
  def initialize (content,line_number)
     @content=content
     @line_number=line_number
     self.calculate_word_frequency(content)  
  end
  def calculate_word_frequency (content) 
    @highest_wf_words=[]
    @highest_wf_count=[]
    palabras=Hash.new(0)
    content.split.each{|word| palabras[word] += 1}
    @highest_wf_count=palabras.values.max
    @highest_wf_words << palabras.map{ |k,v| v==@highest_wf_count ? k : nil }.compact
    end
end
class Solution
    attr_reader:highest_count_across_lines,:highest_count_words_across_lines,:analyzers
   
  def initialize
    @analyzers=analyzers
  end
  def analyze_file 
       @analyzers=[]
       File.foreach( 'test.txt' ) do |line|
       @analyzers<<LineAnalyzer.new(line,$.)
       end 
       puts @analyzers.each{|x| x.line_number}
  end
  
   def calculate_line_with_highest_frequency
     count=[]
    @analyzers.each do|x|
            count << x.highest_wf_count          
    end
    @highest_count_across_lines=count.max
    @analyzers.each do|x|
            count << x.highest_wf_count          
    end


    palabras=Hash.new(0)
    content.split.each{|word| palabras[word] += 1}
@highest_wf_words << palabras.map{ |k,v| v==@highest_wf_count ? k : nil }.compact
   end
   
   def print_highest_word_frequency_across_lines 
    @analyzers.each do|x|
            @highest_wf_words << palabras.map{ |k,v| v==@highest_wf_count ? k : nil }.compact          
    end

 end
end
solution = Solution.new
#expect errors until you implement these methods
 solution.analyze_file
  solution.calculate_line_with_highest_frequency
 solution.print_highest_word_frequency_across_lines
puts solution.analyzers
puts solution.highest_count_across_lines
