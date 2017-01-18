require 'rest_client'
require "csv"
url="https://iid.googleapis.com/iid/v1:batchAdd"
def readfile(url)
	CSV.foreach("tokens.csv") do |row|
		

res=RestClient.post(url, header:{'Authorization_key' =>  '123',body:{"to" => "/topics/movies", "registration_tokens" => row[0] }})
	puts res
	end
end
	readfile(url)

