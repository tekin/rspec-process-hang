require 'rails_helper'

RSpec.describe 'Forking a process' do
  it 'forks and waits before continuing' do
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

    expect(true).to be true
  end
end
