module Celluloid
  module OPM
    module Store
      class Memory
        include Store

        def initialize(opts = {})
          @array = []
          @mutex = Mutex.new
          @serialization = opts[:serialization] || OPM::Serialization::Binary
        end

        def push(message)
          serialized_message = @serialization.dump(message)
          @mutex.synchronize { @array.push serialized_message }
        end

        def pop
          if serialized_message = @mutex.synchronize { @array.pop }
            @serialization.load serialized_message
          end
        end
      end
    end
  end
end
