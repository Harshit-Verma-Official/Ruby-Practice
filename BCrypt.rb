require 'bcrypt'

password = BCrypt::Password.create("my password")

puts "Comparing without decryption"
puts password
puts password == "my password"
puts "-" * 10

puts "Comparing with decryption"
password = BCrypt::Password.new("$2a$12$k8Ez/cJ3yCT4YsY/yePBSOhgi6pZa8nTDt2jDhJZ8J9TtjijQ2vei")
puts password
puts password == "my password"