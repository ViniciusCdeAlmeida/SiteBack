class Message 
    include ActiveModel::Model
    attr_accessor :email, :subject, :text
    validates :email, :subject, :text, presence: true
end
