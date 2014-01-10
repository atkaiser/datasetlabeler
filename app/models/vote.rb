class Vote < ActiveRecord::Base
  belongs_to :project
  belongs_to :datum
  belongs_to :category
end
