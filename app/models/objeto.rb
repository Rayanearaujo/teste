class Objeto < ActiveRecord::Base
  belongs_to :crime
  belongs_to :vitima
end
