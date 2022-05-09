class User < ApplicationRecord
    after_initialize :ensure_session_token
    validates :user_name , presence: true , uniqueness: true
    validates :password_digest, presence: true
    attr_reader :password
    def password=(password)
        @password= password
        self.password_digest=BCrypt::Password.create(password)

    end


    def self.reset_session_token!

    end

    def is_password?(password)


    end



    def self.find_by_credentials(user_name,password)

    end


end
