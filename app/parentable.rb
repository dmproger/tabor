module App
  module Parentable
    def self.included(klass)
      klass.belongs_to :parent, class_name: klass.name, optional: true
    end
  end
end
