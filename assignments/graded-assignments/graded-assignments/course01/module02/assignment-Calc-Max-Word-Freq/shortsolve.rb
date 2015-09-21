class LineAnalyzer
  attr_reader:highest_wf_count,:highest_wf_words,:content,:line_number
  def initialize (content,line_number)
 	 @content=content
  	 @line_number=line_number
      	 end
  def calculate_word_frequency (x,y) 
      highest_wf_count =0
      	 self.split.each do |word| 
     	 highest_wf_count +=1
      	 x << word
      	 y << highest_wf_count
  		   end
     end 
 end

class Solution < LineAnalyzer
   attr_reader:highest_count_across_lines,:highest_count_words_across_lines
   
 	def analyze_file (file_name)
       File.foreach( file_name ) {|line| line.calculate_word_frequency(a,b)}
  		end
    end


cara=Solution.new
cara.analyze_file('test.txt')
puts cara.highest_count_across_lines + cara.highest_count_words_across_lines
