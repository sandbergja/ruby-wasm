# The JS module from here: https://github.com/ruby/ruby.wasm/blob/main/ext/js/lib/js.rb
require 'js'

document = JS.global[:document]

document.getElementById('button').addEventListener("click") do |event|
  # Get the contents of the DOM
  current_list = document[:body][:innerText].to_s.split("\n")
  # Remove the button text
  current_list.reject! { |element| element == 'Add next fibonnaci number' }
  new_number = Fibonacci.new(current_list).new_number

  li = JS.global[:document].createElement("li")
  li[:innerText] = new_number
  document.getElementById('list').appendChild(li)
end
