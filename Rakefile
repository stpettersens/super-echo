#
# Rakefile to build standalone `secho` Unix-like executable program on Travis CI.
# To build on your own system; please use the Makefile instead.
#
freeze = "python /home/travis/virtualenv/python2.7/lib/python2.7/site-packages/commands/freeze.py"
io = "secho"

task :default do
    sh "#{freeze} #{io}.py"
    sh "make -f Makefile"
    sh "strip #{io}"
    sh "rm -f Makefile *.o *.c"
end

task :clean do
    sh "rm -f #{io}"
end

task :test do
    puts "dummy test"
end
