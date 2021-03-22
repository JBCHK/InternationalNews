module TechNewsUsa                   
class CLI                            
                                     
    def call
      start     
      validator
      indiv_menu
    end



    def start
      TechNewsUsa::Article.all.clear
      puts "Enter the country code for a country's top news articles:"
    end



    
    
    def validator
      @user_input = gets.strip  
      input = @user_input
      if IsoCountryCodes.for_select.any?{|arr| arr.include?(input)} == true
        indiv_menu(input)
      else
        puts "Please type in a valid UPPERCASE 2-letter country code"
        call
      end
    end



    

    def article_list(input)
      TechNewsUsa::Article.news(input)
      TechNewsUsa::Article.get_title
      sleep(1)
    end
    
    

  

    def indiv_menu(input)
      article_list(input)
      puts "Type in the number of your preferred article. Type in 'menu' to go back to the beginning, or type 'exit' to leave:" 
      @menu_input = gets.strip
      v = @menu_input.to_i - 1 
      if @menu_input.to_i > 0 && TechNewsUsa::Article.all.include?(Article.all[v]) == true
        TechNewsUsa::Article.display(v)
        sleep(1)  
        waitingroom(input)
      elsif @menu_input == 'menu'
        call
      elsif @menu_input == 'exit'
        goodbye
      else
        puts "Please enter a number between '1' and the total number of articles in the list"
        back(input)                                                             
        end
    end




    def waitingroom(input)
      puts "When ready, type 'back' to return to the list of articles"
      @to_list = gets.strip
        if @to_list == 'back'
          back(input)
        else    
          back(input)
       end
    end


    def back(input)
      TechNewsUsa::Article.all.clear
      indiv_menu(input)
    end


 
    def goodbye
      puts "Come back for more international news!"
      exit
    end

    
 end
end
