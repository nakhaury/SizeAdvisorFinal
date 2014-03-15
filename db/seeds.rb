User.destroy_all
["Nitesh", "Jeff"].each do |name|
  u = User.new
  u.first_name = name
  u.password = "password"
  u.save
end

puts "There are now #{User.count} users in the database."


# Seeds based on my sizing

jcrew.destroy_all
jcrew_size = [ { :user_id => 1,
                      :size => 'small',
                      },
                    { :user_id => 2,
                      :size => 'medium',
                      },
                  ]

jcrew_size.each do |jcrew_input|
  s = jcrew.new
  s.user_id = jcrew_input[:user_id]
  s.size = jcrew_input[:size]

bananarepulic.destroy_all
bananarepulic_size = [ { :user_id => 1,
                      :size => 'x-small',
                      },
                    { :user_id => 2,
                      :size => 'small',
                      },
                  ]

bananarepulic_size.each do |bananarepulic_input|
  s = bananarepulic.new
  s.user_id = bananarepulic_input[:user_id]
  s.size = bananarepulic_input[:size]




