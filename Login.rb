require 'HTTParty'

class Login

  def set_data(k,v)
    JSON.generate({:username => k, :password => v})
  end

  def log(options)
    res = HTTParty.post('http://45.32.251.133/login',options).body
  end
end
