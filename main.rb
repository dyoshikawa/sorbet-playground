# typed: true

require 'sorbet-runtime'

module MySorbet
  extend T::Sig
  include Kernel

  sig {params(message: String).returns(String)}
  def say(message)
    puts message
    message
  end

  module_function :say
end

MySorbet::say 'test'