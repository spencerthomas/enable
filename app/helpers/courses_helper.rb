module CoursesHelper
	def course_count
		Course.all.count.to_s
	end
end
