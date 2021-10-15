require_relative 'item.rb'
class List

    attr_accessor :label

    def initialize(label)
        @label = label
        @items = []
    end

    def add_item(title,deadline,description="")
        #deadline ivalid return false
        # debugger
        #deadline valid title added return true
        if Item.valid_date?(deadline)
            # debugger
            @items << Item.new(title,deadline,description)
            return true
        end
        false
    end

    def size
        @items.count
    end

    def valid_index?(index)
        if index < 0 || index > size
            return false
        end
        true
    end

    def swap(idx_1, idx_2)
        if valid_index?(idx_1) && valid_index?(idx_2)
            @items[idx_2],@items[idx_1] = @items[idx_1],@items[idx_2]
            return true
        end
        false 
    end

    def [](index)
        @items[index]
    end

    def priority
        @items.first
    end

    def print
        print "#{@label}"
        @items.each_with_index { |item, idx| print idx + " | " + item }
    end

    def print_full_item(index)
       item_inst = @items[index] 
       puts item_inst.title
       puts item_inst.deadline
       puts item_inst.description
    end

    def print_priority
        print @items.first
    end

    def up(index, amount=1)
    end

    def down(index, amount)
    end
end


