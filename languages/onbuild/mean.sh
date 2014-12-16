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
 commander npm install -g npm@2
commander npm update -g npm
}

step2(){
commander npm install -g grunt-cli 
commander npm install -g bower 
commander npm install -g mean-cli
}

step3(){
#echo $HOME
#cd $HOME 
echo -e '\n' | mean init myApp 
cd myApp 
commander npm -g install
commander npm link 
#( grunt test ) || ( echo never mind the test - try again later! )
}

 
steps(){
step1
step2
step3
}

steps
