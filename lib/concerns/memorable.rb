module Memorable
  module ClassMethods
    #don't need self before class methods with use of extend
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
      super
      @songs = []
    end
  end
end
