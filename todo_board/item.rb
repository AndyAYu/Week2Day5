# require 'byebug'
class Item
    attr_accessor :description, :title, :deadline
    #0123-56-89
    #2019-12-30
    def self.valid_date?(date_string)
        # debugger
        if date_string.length < 10
            raise 'deadline is not a valid date'
            return false
        elsif date_string[(5..6)].to_i > 12 || date_string[(5..6)].to_i < 0 || date_string[(5..6)].include?("-")
            raise 'deadline is not a valid date'
            return false
        elsif date_string[(8..9)].to_i > 31 || date_string[(8..9)].to_i < 0 || date_string[(8..9)].include?("-")
            raise 'deadline is not a valid date'
            return false
        end
        true
    end

    def initialize(title, deadline, description)
        @title = title
        @description = description
        # @deadline = deadline if Item.valid_date?(deadline)
        @deadline = Item.valid_date?(deadline)
    end


end

# Item.valid_date?('2019-10-25') # true
# Item.valid_date?('1912-06-23') # true
# Item.valid_date?('2018-13-20') # false
# Item.valid_date?('2018-12-32') # false
# Item.valid_date?('10-25-2019') # false