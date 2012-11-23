require 'opium/store/memory'

module Opium
  module Store
    BUILT_IN_TYPES = {
      memory: Memory
    }

    def self.default
      Memory.new
    end
  end
end
