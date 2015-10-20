require 'HTTParty'

class Register

 # def initialize (accounts)
 #   @accounts = accounts
 # end

  def set_data(k,v)
    JSON.generate({:username => k, :password => v})
  end


  def reg(options)
      res = HTTParty.post('http://45.32.251.133/users/k',options).body
    end

end
