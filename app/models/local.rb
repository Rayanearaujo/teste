class Local < ActiveRecord::Base
	validates_presence_of :latitude, message: "deve ser preenchido"
	validates_presence_of :longitude, message: "deve ser preenchido"
	validates_numericality_of :latitude, message: "deve ser numérico"
	validates_numericality_of :longitude, message: "deve ser numérico"
end
