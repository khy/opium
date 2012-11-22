module Celluloid
  module OPM
    class Mailbox < Celluloid::Mailbox
      def initialize(history = nil)
        @history = history
        super()
      end

      def <<(message)
        unless message.is_a?(SystemEvent)
          history.async.push(message)
        end

        super
      end

      def history
        @history ||= OPM::History.for_mailbox(self)
      end
    end
  end
end
