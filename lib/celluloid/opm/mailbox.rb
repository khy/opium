module Celluloid
  module OPM
    class Mailbox < Celluloid::Mailbox
      attr_reader :history

      def initialize(history)
        @history = history
        super()
      end

      def <<(message)
        unless message.is_a?(SystemEvent)
          @history.push(message)
        end

        super
      end
    end
  end
end
