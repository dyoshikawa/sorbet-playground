# typed: false

require 'sorbet-runtime'

module MySorbet
  extend T::Sig
  include Kernel

  # @param [String] message
  def say(message)
    puts message
    message
  end

  module_function :say
end

MySorbet::say 'test'
