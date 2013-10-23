class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :company, :job, :password,
                  :password_confirmation, :remember_me, :hcp, :nothcp, :reminder, :future

  INVALID_EMAILS = %w(virginmedia.com ee.co.uk plus.net aol.com aol.co.uk sky.com tiscali.co.uk btinternet.com gmail.com googlemail.com hotmail.co.uk hotmail.com live.co.uk yahoo.com yahoo.co.uk outlook.com outlook.co.uk icloud.com ymail.com mail.com bigstring.com talktalk.co.uk )
  validates_format_of :email,
                      :without => /#{INVALID_EMAILS.map{|a| Regexp.quote(a)}.join('|')}/,
                      :message => "Please register using your work email address."

  after_create :send_user_and_admin_notification

  private

  	def send_user_and_admin_notification
      AdminMailer.registration_notification(self).deliver
      UserMailer.welcome(self).deliver
  	end
end


 # EXCLUSION_DOMAINS = %w[
 #   gmail.com
 #   yahoo.com
 #   yahoo.co.uk
  #  hotmail.com
  #  hotmail.co.uk
 #   googlemail.com
 #   live.co.uk
#]

#EXCLUSION_REGEXP = Regexp.new('(?:' + EXCLUSION_DOMAINS.collect { |d| Regexp.escape(d)

#validates :email,
#  :format => {
#    :with => VALID_EMAIL_REGEXP,
#    :without => EXCLUSION_REGEXP,
#    :message => "%{value} may not be used to register. Please use your work email address."
#}