module Celluloid
  module OPM
    class History
      def initialize(store)
        @store = store
      end

      def push(call)
        opm_call = OPM::Call.for(call)
        serialized_call = Serialization::Binary.dump(opm_call)
        @store.push serialized_call
      end

      def pop
        serialized_call = @store.pop
        Serialization::Binary.load(serialized_call)
      end
    end
  end
end
