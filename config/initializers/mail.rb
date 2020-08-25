ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  domain: 'gmail.com',
  port: 587,
  user_name: 'testcamp19351@gmail.com',
  password: 'programing19351',
  authentication: 'plain',
  enable_starttls_auto: true
}