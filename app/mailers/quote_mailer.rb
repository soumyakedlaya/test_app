class QuoteMailer < ApplicationMailer
  default from: 'hashtagphonerepairtest@gmail.com'

  def sample_email(quote)
    @quote = quote
    email = 'hashtagphonerepairtest@gmail.com'
    mail(to: email, subject: 'A quote has been requested')
  end
end
