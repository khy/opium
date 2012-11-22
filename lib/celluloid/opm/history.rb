module Celluloid
  module OPM
    class History
      include Celluloid

      def initialize(store = nil, serialization = nil)
        @store = store || Store.default
        @serialization = serialization || Serialization.default
      end

      def push(call)
        opm_call = OPM::Call.for(call)
        serialized_call = @serialization.dump(opm_call)
        @store.push serialized_call
      end

      def pop
        serialized_call = @store.pop
        @serialization.load(serialized_call)
      end
    end
  end
end
