class Course < ApplicationRecord
	has_many :chapters, :dependent => :destroy
	belongs_to :topic
	belongs_to :path
	acts_as_taggable
	include PgSearch

	pg_search_scope :search_for, :against => [:title, :summary, :description]
end
