class Geo < Sinatra::Base
  
  helpers do
    
    def ip_lookup ip
      @url = "http://api.ipinfodb.com/v3/ip-city/?format=json&ip=#{ip}&key=#{API_KEY}"
      response = JSON.parse(open(@url).read)
      return (response[REGION_CHECK['key']] == REGION_CHECK['value']) ? true : false
    end
    
  end
  
  get '/' do
    content_type :js
    @ip = request.ip
    @callback = params[:callback]
    @lookup = ip_lookup @ip
    erb :out
  end
  
end