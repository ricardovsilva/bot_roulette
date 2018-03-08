class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :omniauthable, omniauth_providers: %i[twitch]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.image_url = auth.info.image
      user.token = auth.credentials.token
    end
  end
end
