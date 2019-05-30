class ExampleMailer < ApplicationMailer
	default from: "callj1217@gmail.com"

	def sample_email
    	# @user = user
    	mail(to: "stettnisch80@gmail.com", subject: 'Sample Email')
 	end
end
