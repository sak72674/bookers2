class ThanksMailer < ApplicationMailer
	def account_registration(resource)
		@user = resource

		mail to: @user.email, subject: 'Welcome to Bookers!'
	end
end
