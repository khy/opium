require File.dirname(__FILE__) + '/../spec_helper'

describe Celluloid::OPM do
  class Document
    include Celluloid
    include Celluloid::OPM

    attr_accessor :title
  end

  it 'should persist method calls in a prevalence object' do
    document = Document.new
    document.title = 'This'
    document.title = 'That'
    message = document.mailbox.history.messages_since_last_snapshot.first
    message.method.should == :title=
    message.arguments.first.should == 'That'
  end
end
