class Event < ActiveRecord::Base
	belongs_to :user

	def as_json(options = {})
  	{
  		title: self.title,
  		start: self.time,
  		id: self.id
  	}
  end
end
