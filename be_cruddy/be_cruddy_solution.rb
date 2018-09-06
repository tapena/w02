# Warmup

speaker = Speakers.last("Hendrickson")
speaker = Speakers.select(id: 4)
speaker = Speakers.all

# 1
rails new conference_app 
cd conference_app
subl .

# 2
rails g model Speaker first_name:string last_name:string email:string

# 3
speaker = Speaker.new(first_name: "Sally", last_name: "Johnson", email: "sallyj@gmail.com")
speaker.save

# Paste repository link here:
https://github.com/tapena/conference_app.git