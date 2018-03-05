class Message 
    include ActiveModel::Model
    attr_accessor :email, :subtitle, :text
    validates :email, :subtitle, :text, presence: true
end
