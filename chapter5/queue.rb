require "thread"
q = Queue.new

t = Thread.new do
  while last = q.pop
    sleep(1) # simulate cost
    puts last
  end
end

q << :foo
sleep(1)
$stdout.flush

