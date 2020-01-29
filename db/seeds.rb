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
	programan = register_profile('programan', 25, 'A', false)
  programan_father = register_profile('programan_father', 58, 'A', true)
  programan_mother = register_profile('programan_mother', 58, 'O', true)
  programan_bigsister = register_profile('programan_bigsister', 30, 'B', true)
  programan_sister = register_profile('programan_sister', 20, 'AB', false)
  programan_bigbrother = register_profile('programan_bigbrother', 28, 'A', true)
  programan_brother = register_profile('programan_brother', 22, 'O', true)
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
