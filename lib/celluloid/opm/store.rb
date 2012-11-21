require 'celluloid/opm/store/memory'

module Celluloid
  module OPM
    module Store
      BUILT_IN_TYPES = {
        memory: Memory
      }

      def self.default
        Memory.new
      end
    end
  end
end
