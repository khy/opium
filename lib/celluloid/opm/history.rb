module Celluloid
  module OPM
    class History
      include Celluloid

      def self.for_mailbox(mailbox)
        OPM::History.new
      end

      def initialize(opts = {})
        @store = opts[:store] || OPM::Store.default
      end

      def add(item)
        @store.add(item)
      end

      def last_snapshot
        @store.find { |item| items.is_a?(OPM::Snapshot) }
      end

      def messages_since_last_snapshot
        @store.take_while { |item| !item.is_a?(OPM::Snapshot) }
      end
    end
  end
end
