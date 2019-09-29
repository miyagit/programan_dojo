
def register_job
  Job.create!(name: 'プログラマン講師')
  Job.create!(name: '家電メーカー')
  Job.create!(name: '主婦')
  Job.create!(name: '保育士')
  Job.create!(name: '学生')
  Job.create!(name: '営業')
end

def register_circle
  Circle.create!(name: 'テニスサークル')
  Circle.create!(name: 'サッカーサークル')
  Circle.create!(name: '野球サークル')
  Circle.create!(name: 'バスケサークル')
end

def register_profile(email, name, job, sex, age, tall, weight, income)
	User.create!(email: email, name: name, job_id: job, sex: sex, age: age, tall: tall, weight: weight, income: income)
end

ActiveRecord::Base.transaction do
	register_job
	programan = register_profile('programan@gmail.com', 'programan',            1,  '男性', 25, 175, 68, 300000)
  programan_father = register_profile('programan_father@gmail.com', 'programan_father',     2,  '男性', 58, 175, 60, 500000)
  programan_mother = register_profile('programan_mother@gmail.com', 'programan_mother',     3,  '女性', 58, 162, 45, 100000)
  programan_bigsister = register_profile('programan_bigsister@gmail.com', 'programan_bigsister',  4,  '女性', 30, 158, 47, 180000)
  programan_sister = register_profile('programan_sister@gmail.com', 'programan_sister',     5,  '女性', 20, 154, 43, 80000)
  programan_bigbrother = register_profile('programan_bigbrother@gmail.com', 'programan_bigbrother', 6,  '男性', 28, 178, 63, 350000)
  programan_brother = register_profile('programan_brother@gmail.com', 'programan_brother',    5,  '男性', 22, 172, 64, 60000)
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
