module Celluloid
  module OPM
    class Mailbox < Celluloid::Mailbox
      attr_reader :history

      def initialize(history)
        @history = history
        super()
      end

      def <<(message)
        @history.push(message)
        super
      end
    end
  end
end
