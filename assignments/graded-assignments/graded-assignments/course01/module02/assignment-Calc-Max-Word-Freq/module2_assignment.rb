class LineAnalyzer
  attr_reader:highest_wf_count,:highest_wf_words,:content,:line_number
  def initialize (content,line_number)
     @content=content
     @line_number=line_number
     self.calculate_word_frequency(content)
         end
  def calculate_word_frequency (content) 
highest_wf_words=[]
highest_wf_count=[]
palabras=Hash.new(0)
content.split.each{|word| palabras[word] += 1}
highest_wf_count=palabras.values.max
highest_wf_words << palabras.map{ |k,v| v==highest_wf_count ? k : nil }.compact
 end

class Solution
   attr_reader:highest_count_across_lines,:highest_count_words_across_lines,:analyzers
   
  def initialize()
    @analyzers=analyzers
    analyzers=Array.new

  def analyze_file (file_name)
       File.foreach( file_name ) do |line|
       x=LineAnalyzer.new(line,$.)
       analyzers << x
      end
    end
   def calculate_line_with_highest_frequency()
    analyzers.each do|x|
       highest_count_across_lines=x.line_number if x.line_number>highest_count_across_lines
     end
     #11. Implement the analyze_file() method to:
#• Read the ‘test.txt’ file in lines
#• Create an array of LineAnalyzers for each line in the file
#12. Implement the calculate_line_with_highest_frequency() method to:
#• calculate the highest number of occurences of a word in a line across all lines and stores this result in the
#highest_count_across_lines attribute.
#• identifies the word(s) that were used with the highest number of occurrences and stores them in
#print_highest_word_frequency_across_lines.
#13. Implement the print_highest_word_frequency_across_lines() method to


   end
   def print_highest_word_frequency_across_lines 
puts %Q{The following words have the highest word frequency per line:
  ["#{highest_wf_count}](appears in line #{highest_count_words_across_lines})}
 end
end
