module Opium
  module Celluloid
    class Mailbox < ::Celluloid::Mailbox
      def initialize(history = nil)
        @history = history
        super()
      end

      def <<(message)
        unless message.is_a?(::Celluloid::SystemEvent)
          opium_message = Opium::Message.new(message.method, message.arguments)
          history.async.add(opium_message)
        end

        super
      end

      def history
        @history ||= Opium::History.for_mailbox(self)
      end
    end
  end
end
