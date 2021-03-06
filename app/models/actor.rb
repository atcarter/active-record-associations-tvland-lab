class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        str = "#{self.first_name} #{self.last_name}"
        str
    end
    
    def list_roles
        arr = []
        characters.each do |c|
            str = "#{c.name} - #{c.show.name}"
            arr << str
        end
        arr
    end
end