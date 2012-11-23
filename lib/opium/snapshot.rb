module Opium
  class Snapshot
    def initialize(object)
      @object = object.dup
    end
  end
end
