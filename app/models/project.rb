class Project < ActiveRecord::Base
  belongs_to :user
  has_many :data, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_many :votes, dependent: :destroy
end
