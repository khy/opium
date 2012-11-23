module Opium
  module Store
    class Memory
      include Enumerable

      @stores = {}
      @mutex = Mutex.new

      def self.for_history(history)
        @mutex.synchronize do
          @stores[history.object_id] ||= Store::Memory.new(history)
          @stores[history.object_id]
        end
      end

      def initialize
        @array = []
        @mutex = Mutex.new
      end

      def add(item)
        @mutex.synchronize { @array.unshift(item) }
      end

      def each(&block)
        @mutex.synchronize { @array.each(&block) }
      end
    end
  end
end
