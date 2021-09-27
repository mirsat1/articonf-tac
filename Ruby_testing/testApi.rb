require 'net/http'
require 'net/https'
require 'uri'

uri = URI("https://articonf1.itec.aau.at:30420/api/use-cases/vialog-enum/tables/video/enum/video_type")
# headers = {
#     'Authorization'=>'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6InJlZ3VsYXJAaXRlYy5hYXUuYXQiLCJjcmVhdGVkX2F0IjoiMjAyMS0wOS0yNyAwODowMjoyOC4wNDAzNDAiLCJ2YWxpZF91bnRpbCI6IjIwMjEtMDktMjggMDg6MDI6MjguMDQwMzQwIn0.PN2imoVMASvrtqKSU6VmDIMwnzwA0Q-K5pJlvbUSsf0'
# }
params = { :api_key => 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6InJlZ3VsYXJAaXRlYy5hYXUuYXQiLCJjcmVhdGVkX2F0IjoiMjAyMS0wOS0yNyAwODowMjoyOC4wNDAzNDAiLCJ2YWxpZF91bnRpbCI6IjIwMjEtMDktMjggMDg6MDI6MjguMDQwMzQwIn0.PN2imoVMASvrtqKSU6VmDIMwnzwA0Q-K5pJlvbUSsf0' }
uri.query = URI.encode_www_form(params)
# https = Net::HTTP.new(uri.host, uri.port)
response = Net::HTTP.get_response(uri)

puts res.body if res.is_a?(Net::HTTPSuccess)
