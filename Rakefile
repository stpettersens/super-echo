#
# Rakefile to build standalone `secho` Unix-like executable program on Travis CI.
# To build on your own system; please use `make` instead.
#
freeze = "python /home/travis/virtualenv/python2.7/lib/python2.7/site-packages/pip/commands/freeze.py"
io = "secho"

task :default => [:freeze, :compile]

task :freeze do
    sh "python #{io}.py python test output - OK"
    sh "#{freeze}" #{io}.py"
end

task :compile do
    #sh "make -f Makefile"
    #sh "strip #{io}"
    #sh "rm -f Makefile *.o *.c"
    #sh "./#{io} compiled test output - OK"
end

task :clean do
    sh "rm -f #{io}"
end

task :test do
    puts "dummy test"
end
