class Software < ActiveRecord::Base
	 before_save :convert_array_to_string

	 def convert_array_to_string
     self.softwarename = self.softwarename.join(",")
     puts self.softwarename
     return true
   end

end
