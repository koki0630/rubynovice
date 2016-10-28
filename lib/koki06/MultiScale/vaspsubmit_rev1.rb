$run_csh=<<'EOS'
#!/bin/csh
#$ -cwd
#$ -S /bin/sh -V
#$ -pe vasp 8
#$ -N test
#$ -q all.q@asura8


mpirun -np 16 vasp
EOS

def change_line2(file,linenumber,newline)
  tmp=file.split(/\n/)
#  File.open(file,"w")
  tmp[linenumber-1]=newline.to_s
  $run_csh =""
  tmp.each do |val|
    #    p $val
    $run_csh << val+"\n"
    #    File.open(file,"a") do |f|
    #      f.write val+"\n"
    #    end
  end
end

def ask(text0)
  print("Please type #{text0}  >>>>>  ")
  cores=gets.chomp.to_i
  return cores
end

def ask_job(text0)
  print("Please type #{text0} >>>>>  ")
  name=gets.chomp
  return name
end

def machine_number(text0, text1)
  print("Please type #{text0}  >>>>> #{text1}")
  num=gets.chomp.to_s
  return num
end

def main
  cores=ask("core number")
#  newline="\#$ -pe vasp "+cores.to_s
#  reline="\#$ -pe vasp 4"
#  change_line2($run_csh,4,newline)
#  newline2="mpirun -np "+cores.to_s+" vasp"
#  reline="mpirun -np 4 vasp"
#  change_line2($run_csh,9,newline2)

  name=ask_job("job number")
#  newline="\#$ -N "+name
#  reline="\#$ -N jobname"
#  change_line2($run_csh,5,newline)

  num=machine_number("asura number","asura")
#  newline="\#$ -q all.q@asura"+num
#  reline="\#$ -q all.q@asura5"
#  change_line2($run_csh,6,newline)

  #  system "cat ./run.csh"
  return $run_csh
end

print main if $0==__FILE__



#dfoutput =`qsub ./run.csh`
#change_line2("./run.csh",2,reline)
