def check_password(string)
  
    if string.length >= 6 && string.length <= 20 #checks length of password
      if string.match(/[A-Z]+/) # Regex for one capitalized letter
        if (string.match(/\d+/) || string.match(/[!@#$%&*+:?]+/))  # Regex for at least one number
          return "Valid Password"
        
        else
          raise ArgumentError.new("Your password must contain at least one number or a special character.")
        end # Ends the numbers & special characters statement
      
      else
        raise ArgumentError.new("Your password must contain at least one capital letter.")
      end  #ends the capitalized letter statement
      
    else string.length > 20 || string.length < 6 
      raise ArgumentError.new("Your password must be more than six and less than twenty digits in length.")
    end # Ends the length statement
    
end

# driver code

p check_password("EvanesCence32!") == "Valid Password"
p check_password("EvanesCence32@") == "Valid Password"
p check_password("EvanesCence#") == "Valid Password"
p check_password("EvanesCence32$") == "Valid Password"
p check_password("EvanesCence%") == "Valid Password"
p check_password("EvanesCence32&") == "Valid Password"
p check_password("EvanesCence32*") == "Valid Password"
p check_password("EvanesCence+") == "Valid Password"
p check_password("EvanesCence32:") == "Valid Password"
p check_password("EvanesCence32?!") == "Valid Password"
p check_password("EvanesCence=") == "Your password must contain at least one number or a special character."
p check_password("EvanesCence") == "Your password must contain at least one number or a special character."
p check_password("evanescence") == "Your password must contain at least one capital letter."
p check_password("apple") == "Your password must be more than six and less than twenty digits in length."
p check_password("antidisestablishmentarianism") == "Your password must be more than six and less than twenty digits in length."
