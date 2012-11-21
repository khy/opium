module Celluloid
  module OPM
    class History
      def self.serialize_message(message)
        message
      end

      def self.deserialize_message(message)
        message
      end

      def initialize(store)
        @store = store
      end

      def push(message)
        @store.push History.serialize_message(message)
      end

      def pop
        History.deserialize_message @store.pop
      end
    end
  end
end
