module Celluloid
  module OPM
    class Mailbox < Celluloid::Mailbox
      def initialize(history = nil)
        @history = history
        super()
      end

      def <<(message)
        unless message.is_a?(SystemEvent)
          opm_message = OPM::Message.new(message.method, message.arguments)
          history.async.add(opm_message)
        end

        super
      end

      def history
        @history ||= OPM::History.for_mailbox(self)
      end
    end
  end
end
