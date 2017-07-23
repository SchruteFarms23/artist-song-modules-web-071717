module Memorable

  module ClassMethods

  def count
    self.all.count
  end

  def reset_all
    self.all.clear
  end

 end

 module InstanceMethods

 	def initialize
 		self.class.all << self #self.class gives the instance's class like Song or Artist, then calls .all method which is either @@artists or @@songs
 	end
 end


end