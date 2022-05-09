class User < ApplicationRecord
    after_initialize :ensure_session_token
    validates :user_name, presence: true , uniqueness: true
    validates :password_digest, presence: true
    attr_reader :password


    has_many :cats, class_name: 'Cat', primary_key: :id, foreign_key: :owner_id, dependent: :destroy
    has_many :rental_requests, class_name: 'CatRentalRequest', primary_key: :id, foreign_key: :requester_id
    
    def password=(password)
        @password= password
        self.password_digest=BCrypt::Password.create(password)
    end

    def self.reset_session_token!
        self.session_token = self.class.generate_session_token
        self.save!
        self.session_token
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end
    
    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end

    def self.find_by_credentials(user_name, password)
        @user = User.find_by(user_name: user_name)
        return nil if @user.nil?
        @user.is_password?(password) ? @user : nil
    end

    private
    def ensure_session_token
        self.session_token ||= self.class.generate_session_token
    end
end
