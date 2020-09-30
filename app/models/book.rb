class Book < ApplicationRecord
    validates_presence_of :title, message: "El libro debe tener título."

    def self.all_ordered(order)
        self.order(title: order)
    end

    def self.lent
        self.where(lent: true)
    end

    def self.on_shelf
        self.where(lent: false)
    end
end
