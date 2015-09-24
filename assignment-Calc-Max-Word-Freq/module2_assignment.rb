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
    content.split.each{|word| palabras[word.downcase] += 1}
    @highest_wf_count=palabras.values.max
    @highest_wf_words << palabras.map{ |k,v| v==@highest_wf_count ? k : nil }.compact
    @highest_wf_words.flatten!
    end
end
class Solution
  attr_reader:highest_count_across_lines,:highest_count_words_across_lines,:analyzers
  def initialize
    @analyzers=analyzers
    @analyzers=[]
  end
  def analyze_file 
    File.foreach( 'test.txt' ){|line|@analyzers<<LineAnalyzer.new(line,$.)}
  end   
  def calculate_line_with_highest_frequency
    c||=0
    @highest_count_words_across_lines =[]
    @analyzers.each{|x| c = x.highest_wf_count  if c < x.highest_wf_count}
    @highest_count_across_lines=c
    @analyzers.each{|x| @highest_count_words_across_lines << x if x.highest_wf_count == c}
  end
  def print_highest_word_frequency_across_lines 
    puts "The following words have the highest word frequency per line:"
    @highest_count_words_across_lines.each{|x| puts "#{x.highest_wf_words} (appears in line #{x.line_number})" }
  end
end
solution = Solution.new
#expect errors until you implement these methods
 solution.analyze_file
 solution.calculate_line_with_highest_frequency
 solution.print_highest_word_frequency_across_lines
