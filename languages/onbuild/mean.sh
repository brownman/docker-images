set -u

#we only want to print errors
exec 1> >(grep 'npm ERR' 1>&2)
#exec 2> >(grep 'npm ERR' 1>&2)



trace(){
  echo 1>&2 "$@"
}

commander(){
    local args=( $@ )
    local cmd="${args[@]}"
    trace "[CMD] $cmd" 
    set +e
    eval "$cmd" || { exit 1; }
}

step1(){
  commander npm update -g npm
  commander npm install -g grunt-cli 
}

step2(){
 #  cat /tmp/2.sh  | grep -i err | wc -l
commander npm install -g bower 
commander npm install -g mean-cli
echo $HOME
cd $HOME 
echo -e '\n' | mean init myApp 
cd myApp 
commander npm -g install
commander npm link 
#( grunt test ) || ( echo never mind the test - try again later! )
}

step3(){
  apt-get update -y 
  apt-get upgrade -y

  apt-get install -y --force-yes locate
  updatedb
  locate grunt-cli
}

 

step1
step2
