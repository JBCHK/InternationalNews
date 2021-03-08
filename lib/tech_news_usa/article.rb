module TechNewsUsa
  class Article
    attr_accessor  :title, :url, :description 
    @@all = []
  
    

    def self.assemble(response)
      response.each do |hash|
        article = self.new
        article.title = hash["title"]
        article.url = hash["url"]
        article.description = hash["description"]
        article.save 
      end
    end
  

    def self.news(input)
      TechNewsUsa::API.get_news(input)
    end

    def self.all
       @@all
    end

    
    def save
       self.class.all << self  
    end

  
      
      
    def self.get_title
      index = 0 
        self.all.each_with_index do |article, index|
            puts "\n #{index + 1}: #{article.title}"
        end
   
    end


   
    def self.display(v)                                      
      puts "\n#{self.all[v].title}"
      puts "\n#{self.all[v].url}"
      puts "\n#{self.all[v].description}"
    end



  

  end
end
