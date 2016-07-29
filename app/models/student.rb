class Student < ApplicationRecord

	include SearchCop

	belongs_to :laclasse
	belongs_to :matiere

	search_scope :search_student do
		attributes :first_name, :last_name

		options :first_name, :type => :fulltext
		options :last_name, :type => :fulltext
	end

end
