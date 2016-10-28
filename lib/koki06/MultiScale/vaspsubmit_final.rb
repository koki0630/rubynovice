$run_csh =<<"EOS"
#!/bin/csh
#$ -cwd
#$ -S /bin/sh -V
EOS

def ask(text0,text1='')
  print("Please type #{text0}  >>>>> #{text1}")
  return gets.chomp
end

def main
  cores=ask('core number')
  $run_csh << "\#$ -pe vasp #{cores}\n"
  $run_csh << "\#$ -N #{ask('job name')}\n"
  $run_csh << "\#$ -q all.q@asura#{ask('host machine','asura')}\n"
  $run_csh << "\n\nmpirun -np #{cores} vasp\n"
  return $run_csh
end

print main if __FILE__ == $0

