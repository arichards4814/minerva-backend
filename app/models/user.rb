class User < ApplicationRecord
    has_many :notebooks
    has_many :curriculums

    has_many :subscriptions

    validates :username, presence: true
    validates :password, presence: true
    validates :password, length: { in: 2..20 }
    validates :username, length: { in: 3..14 }
    validates :email, uniqueness: true
    validates :username, uniqueness: true

    has_secure_password
end
