class Lesson < ApplicationRecord

	# Guide ruby on rails association basics 2.1 : crée le lien entre les modèles course et lessons
	belongs_to :course
	
	# S'assurer que ces éléments sont bien présents.
	validates :title, :body, :course,
              presence: true

end
