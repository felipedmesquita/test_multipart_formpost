require "typhoeus"
require "json"

File.open("image.jpg", "rb") do |avatar_file|
  body = {
    "user[name]" => "Ethon",
    "user[avatar]" => avatar_file
  }

  request = Typhoeus::Request.new(
    "http://localhost:3000/users/1",
    method: :post,
    body: body,
    customrequest: "PUT",
    headers: { "Accept" => "application/json" }
  )

  request.run
end
