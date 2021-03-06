class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters

    def actors_list
        arr = []
        self.characters.each do |c|
            arr << c.actor.full_name
        end
        arr
    end
end