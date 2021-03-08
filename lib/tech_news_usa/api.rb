module TechNewsUsa
  class API


    def self.get_news(input)
    resp = HTTParty.get("https://api.currentsapi.services/v1/latest-news?country=#{input}&language=en&apiKey=#{ENV['CURRENTS_API_KEY']}")
    response = resp["news"]
    TechNewsUsa::Article.assemble(response)                                             
    end 
  

  end
end
   
     
                        


