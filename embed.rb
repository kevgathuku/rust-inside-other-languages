require 'ffi'

module Hello
  extend FFI::Library
  ffi_lib 'target/release/libembed.dylib'
  # Connect the process function in Rust to a process function in Ruby
  # Empty array: process takes no parameters
  # :void process returns nothing
  attach_function :process, [], :void
end

Hello.process

puts 'done!'
