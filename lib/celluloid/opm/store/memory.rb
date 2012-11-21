module Celluloid
  module OPM
    module Store
      class Memory
        include Store

        def initialize(opts = {})
          super
          @array = []
        end

        def push(message)
          @array.push(message)
        end

        def pop
          @array.pop
        end
      end
    end
  end
end
