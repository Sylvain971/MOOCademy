class Course < ApplicationRecord

	#guide ruby on rails association basics 1 : crée le lien entre les modèles course et lessons
	has_many :lessons, dependent: :destroy

end
