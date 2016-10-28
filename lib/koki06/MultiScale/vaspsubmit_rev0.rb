#require "./change_line.rb"

def change_line2(file,linenumber,newline)
  tmp=File.read(file).split(/\n/)
  File.open(file,"w")
  tmp[linenumber-1]=newline.to_s
  tmp.each do |val|
    File.open(file,"a") do |f|
      f.write val+"\n"
    end
  end
end

def ask()
  print("Please type how many cores do you use for calclation  >>>>>  ")
  cores=gets.chomp.to_i
  return cores
end

def ask_job()
  print("Please type this job name >>>>>  ")
  name=gets.chomp
  return name
end

def machine_number()
  print("Which asura do you want to calculate >>>>> asura")
  num=gets.chomp.to_s
  return num
end

def main
  cores=ask()
  newline="\#$ -pe vasp "+cores.to_s
  reline="\#$ -pe vasp 4"
  change_line2("./run.csh",4,newline)
  newline2="mpirun -np "+cores.to_s+" vasp"
  reline="mpirun -np 4 vasp"
  change_line2("./run.csh",9,newline2)

  name=ask_job()
  newline="\#$ -N "+name
  reline="\#$ -N jobname"
  change_line2("./run.csh",5,newline)

  num=machine_number()
  newline="\#$ -q all.q@asura"+num
  reline="\#$ -q all.q@asura5"
  change_line2("./run.csh",6,newline)

  system "cat ./run.csh"
end

main


#dfoutput =`qsub ./run.csh`
#change_line2("./run.csh",2,reline)
