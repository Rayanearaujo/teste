class Crime < ActiveRecord::Base
  belongs_to :tipo
  belongs_to :local
end
