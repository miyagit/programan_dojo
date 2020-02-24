def register_circle
  Circle.create!(name: 'テニスサークル')
  Circle.create!(name: 'サッカーサークル')
  Circle.create!(name: '野球サークル')
  Circle.create!(name: 'バスケサークル')
end

def register_profile(name, age, blood_type, is_married)
	User.create!(name: name, age: age, blood_type: blood_type, is_married: is_married)
end

ActiveRecord::Base.transaction do
	# register_job
	programan = register_profile('programan', 25, 0, false)
  programan_father = register_profile('programan_father', 58, 0, true)
  programan_mother = register_profile('programan_mother', 58, 2, true)
  programan_bigsister = register_profile('programan_bigsister', 30, 1, true)
  programan_sister = register_profile('programan_sister', 20, 3, false)
  programan_bigbrother = register_profile('programan_bigbrother', 28, 0, true)
  programan_brother = register_profile('programan_brother', 22, 2, true)
  register_circle
  CircleUser.create(user_id: programan.id, circle_id: Circle.first.id)
  CircleUser.create(user_id: programan_father.id, circle_id: Circle.first.id)
  CircleUser.create(user_id: programan_mother.id, circle_id: Circle.first.id)
  CircleUser.create(user_id: programan_brother.id, circle_id: Circle.first.id)
  CircleUser.create(user_id: programan.id, circle_id: Circle.second.id)
  CircleUser.create(user_id: programan_father.id, circle_id: Circle.second.id)
  CircleUser.create(user_id: programan_bigbrother.id, circle_id: Circle.second.id)
  CircleUser.create(user_id: programan_brother.id, circle_id: Circle.second.id)
  CircleUser.create(user_id: programan_brother.id, circle_id: Circle.third.id)
  CircleUser.create(user_id: programan_sister.id, circle_id: Circle.fourth.id)
  CircleUser.create(user_id: programan_bigsister.id, circle_id: Circle.fourth.id)
  puts '環境構築が完了しました。'
end
