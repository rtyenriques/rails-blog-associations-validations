class Post < ActiveRecord::Base
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags
    accepts_nested_attributes_for :tags, reject_if: :all_blank
   
    validates :name, presence: true
    validates :content, presence: true
  
end
