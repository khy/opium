module Celluloid
  module OPM
    class History
      def initialize(store)
        @store = store
      end

      def push(message)
        @store.push Serialization::JSON.dump(message)
      end

      def pop
        Serialization::JSON.load @store.pop
      end
    end
  end
end
