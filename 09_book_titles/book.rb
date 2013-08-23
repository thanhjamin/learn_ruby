class Book
  attr_accessor :title
  
  def title
    titleWords = @title.split(" ")
    exceptions = ["the","a","an","and","in","of","we"]
    titleWords.each do |x|
      x.capitalize! unless exceptions.include?(x)
    end
    titleWords[0].capitalize!
    titleWords.join(" ")
  end 
end


