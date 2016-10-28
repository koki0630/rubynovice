require 'test/unit'
require "./vaspsubmit_rev1"
#require "./vaspsubmit_final"

$result =<<'EOS'
#!/bin/csh
#$ -cwd
#$ -S /bin/sh -V
#$ -pe vasp 16
#$ -N test
#$ -q all.q@asura8


mpirun -np 16 vasp
EOS

class Test_Sample < Test::Unit::TestCase

  def test_vaspsubmit
    p "Hello "
    p $result
    # print main
    assert_equal($result, main)
  end
end
