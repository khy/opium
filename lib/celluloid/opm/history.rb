module Celluloid
  module OPM
    class History
      include Celluloid

      def self.for_mailbox(mailbox)
        OPM::History.new
      end

      def initialize(store = nil)
        @store = store || Store.default
      end

      def push(call)
        @store.push OPM::Call.for(call)
      end

      def pop
        @store.pop
      end
    end
  end
end
