require 'opium/celluloid/mailbox'

module Opium
  module Celluloid
    def self.included(base)
      base.instance_eval do
        use_mailbox { Opium::Celluloid::Mailbox.new }
      end
    end
  end
end
