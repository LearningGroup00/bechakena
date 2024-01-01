class TelltimeJob
  include Sidekiq::Job

  def perform(name, times)
    times.times do 
      puts "this is #{name}!"
    end
  end 
end
