class Datum < ActiveRecord::Base
  belongs_to :project, :user
end
