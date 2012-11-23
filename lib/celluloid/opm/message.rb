module Celluloid
  module OPM
    class Message
      attr_reader :method, :arguments

      def initialize(method, arguments = [])
        @method = method
        @arguments = arguments
      end
    end
  end
end
