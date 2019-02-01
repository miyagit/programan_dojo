def register_job
  Job.create!(name: 'プログラマン講師')
  Job.create!(name: '家電メーカー')
  Job.create!(name: '主婦')
  Job.create!(name: '保育士')
  Job.create!(name: '学生')
  Job.create!(name: '営業')
end

def register_profile(name, job, sex, age, tall, weight)
	User.create!(name: name, job_id: job, sex: sex, age: age, tall: tall, weight: weight)
end

def register_tweet
  Tweet.create!(text: 'こんにちは！', user_id: 1)
  Tweet.create!(text: 'ありがとう！', user_id: 2)
  Tweet.create!(text: 'さようなら！', user_id: 1)
  Tweet.create!(text: 'ごめんなさい！', user_id: 3)
  Tweet.create!(text: 'おはよう！', user_id: 2)
end

ActiveRecord::Base.transaction do
	register_job
  register_tweet
	register_profile('programan',            1,  0, 25, 175, 68)
  register_profile('programan_father',     2,  0, 58, 173, 60)
  register_profile('programan_mother',     3,  1, 55, 162, 45)
  register_profile('programan_bigsister',  4,  1, 30, 158, 47)
  register_profile('programan_sister',     5,  1, 20, 153, 43)
  register_profile('programan_bigbrother', 6,  0, 28, 178, 63)
  register_profile('programan_brother',    5,  0, 22, 172, 64)
  puts '環境構築が完了しました。'
end
