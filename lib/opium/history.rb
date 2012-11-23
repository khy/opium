module Opium
  class History
    include ::Celluloid

    def self.for_mailbox(mailbox)
      Opium::History.new
    end

    def initialize(opts = {})
      @store = opts[:store] || Opium::Store.default
    end

    def add(item)
      @store.add(item)
    end

    def last_snapshot
      @store.find { |item| items.is_a?(Opium::Snapshot) }
    end

    def messages_since_last_snapshot
      @store.take_while { |item| !item.is_a?(Opium::Snapshot) }
    end
  end
end
