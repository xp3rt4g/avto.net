class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  has_many :cars
  belongs_to :account_type
  belongs_to :town
  devise :database_authenticatable, :registerable, :confirmable, 
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[facebook google_oauth2]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      if(auth.info.email?)
        user.email = auth.info.email
      else
        user.email = "test@test.si"
      end
      @town = Town.first
      user.password = Devise.friendly_token[0, 20]
      user.name = auth.info.name   # assuming the user model has a name
      user.account_type_id = 1
      user.town_id = @town.id
      user.skip_confirmation!
      # If you are using confirmable and the provider(s) you use validate emails, 
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
      if data = session["devise.google_oauth2"] && session["devise.google_oauth2_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  
end
