class Software < ActiveRecord::Base

  validates :softwarename, presence: true, allow_blank: false

	 before_save :convert_array_to_string

	 def convert_array_to_string
     	self.softwarename = self.softwarename.reject{ |c| c.empty? }.join(",")
     	puts self.softwarename
     return true
   	 end

end
