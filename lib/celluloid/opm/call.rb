module Celluloid
  module OPM
    class Call < Celluloid::Call
      def self.for(call)
        self.new(call.method, call.arguments, call.block)
      end

      def initialize(method, arguments = [], block = nil)
        if block
          raise 'Calls with blocks should be handled better than just throwing a self-referential error in the constructor.'
        end

        super(method, arguments)
      end
    end
  end
end
