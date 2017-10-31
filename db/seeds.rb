students = Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v1/students.json").body

students.each do |student|

    User.create!([{ 
                          email: student["email"],
                          password: student["last_name"].downcase,
                          password_confirmation: student["last_name"].downcase
                        }])
end

