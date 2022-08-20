module Memorable
    
    module ClassMethods

      

          def reset_all
            self.all.clear
          end
        
          def count
            self.all.count
          end

          def self.find_by_name(name)
            @@songs.detect{|a| a.name == name}
          end
        
        
      end

      module InstanceMethods
        def to_param
            name.downcase.gsub(' ', '-')
          end
      end
end