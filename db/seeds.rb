# メインのサンプルユーザーを1人作成する
User.create!(name:  "admin",
  email: "admin@example.com",
  password:              "admin_password",
  password_confirmation: "admin_password",
  admin: true)

# 追加のユーザーをまとめて生成する
99.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
password = "password"
User.create!(name:  name,
    email: email,
    password:              password,
    password_confirmation: password)
end