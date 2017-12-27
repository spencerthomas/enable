module TopicHelper
	def topic_count
		Topic.all.count.to_s
	end
end
