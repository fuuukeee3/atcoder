a = true
b = false
c = true

if a
  print "At"
else
  print "Yo"
end

if !a && b
  print "Bo"
elsif !b || c
  print "Co"
end

if a && b && c
  print "foo!"
elsif true && false
  print "yeah!"
elsif !a || c
  print "der"
end

print "\n"
