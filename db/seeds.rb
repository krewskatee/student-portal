HEADERS = {'X-User-Email' => ENV['API_EMAIL'], 'Authorization' => "Token token=#{ENV['API_KEY']}", "Accept" => "application/json" }

students = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v1/students.json", headers: HEADERS).body

students.each do |student|

    User.create!([{ 
                          email: student["email"],
                          password: student["last_name"].downcase,
                          password_confirmation: student["last_name"].downcase
                        }])
end

