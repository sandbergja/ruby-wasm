# frozen_string_literal: true

require 'json'

# The best class there ever was!
# Things that don't seem to work:
# - Network calls
# - Filesystem navigation
class MyClass
  # def initialize
  #   fetch_oaks
  # end

  def to_s
    "*<br>"
  end

  private

  # def fetch_oaks
  #   file = File.open "activity.json"
  #   @data = JSON.load file
  # end
end
