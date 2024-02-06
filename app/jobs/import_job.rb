class ImportJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Nando gay"
    ImportJob.set(wait: 1.minute).perform_later
  end
end
