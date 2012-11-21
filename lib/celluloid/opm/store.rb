require 'celluloid/opm/store/memory'

module Celluloid
  module OPM
    module Store
      BUILT_IN_TYPES = {
        memory: Memory
      }

      def initialize(opts = {})
        @opts = opts
      end

      def push(message)
      end

      def pop
      end
    end
  end
end
