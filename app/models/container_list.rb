class ContainerList < ActiveRecord::Base
   before_save: concatenate_details

   def concatenate_details
       self.container_list = "#{container_number_1} #{archival_container_format}"
   end
end
