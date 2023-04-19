require "test_helper"
require "capybara/cuprite"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :cuprite

  test "will this hang?" do
    process_pids = [1,2].map do |count|
      Process.fork {
        puts "Working #{count}"
        sleep(1)
        puts "Done #{count}"
        exit!
      }
    end

    puts "PIDS are #{process_pids}"

    process_pids.each { |pid| Process.waitpid(pid) }
    puts "Done waiting"

    visit "/"
  end
end
