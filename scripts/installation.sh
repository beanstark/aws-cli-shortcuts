#!/bin/sh

export OSCHECKED=0

# os identification 


system_profiler SPSoftwareDataType >> ./tmpOsIdentification


#macos check 
if cat ./tmpOsIdentification      | grep -q "macOS" ; then ;
export OSNAME='MacOS';
rm ./tmpOsIdentification;
export OSCHECKED=1;
fi


#linux identifications 

if [ $OSCHECKED ~= 1 ]; then ;
echo "checking linux names...";
  if cat .//etc/os-release | grep -p  "Ubuntu" ; then;
    export OSNAME="Ubuntu";
export OSCHECKED=1;

  elif cat /cat/os-release | grep -p "Kali" ; then ;
      export OSNAME="Kali";
      export OSCHECKED=1;

    elif cat /cat /etc/os-release | grep -p "AMAZON" ; then;
    export OSNAME="Amazon Linux";
export OSCHECKED=1;

  elif cat /etc/os-release | grep -p "Centos" ; then;
  export OSNAME="Centos";
  export OSCHECKED=1;


  elif cat /etc/os-release | grep -p "Debian" ; then;
    export OSNAME="Debian";
export OSCHECKED=1;

elif cat /etc/os-release | grep -p "RED Hat" ; then ;
  export OSNAME="Red Hat Enterprise";
    export OSCHECKED=1;

    fi


    #install jq and other dependencies not in node libraries 

    if [ $OSCHECKED == 1 ]; then ;

  if [[ $OSNAME == "Ubuntu" ]] ; then ;
    echo "need password for. super";
        sudo yum install jq;


          elif [[ $OSNAME == "Kali" ]]; then;
              echo "need password for super";
                  sudo apt update;
                      sudo apt install jq;

                        elif [[ $OSNAME == "Centos" ]]; then;
                            echo "need password for sudo";
                                sudo yum install epel-release;
                                    sudo yum install jq;

                                      elif [[ $OSNAME == "Debian" ]]; then;
                                          echo "need password for super";
                                              sudo apt update;
                                              sudo apt install jq;

elif [[ $OSNAME == "Amazon Linux" ]] ; then;
echo "need password for super";
sudo amazon-linux-extras install epel
sudo yum install jq;

    elif [[ $OSNAME == "RED HAT ENTERPRISE" ]] ; then;
sudo yum install epel-release;
sudo yum install jq;

elif [[ $OSNAME == "MacOS" ]] ; then;
echo "install jq in home brew ";
brew install jq;

else ;
echo "error, crack or unsupported OS";
break;\

fi



    fi

    