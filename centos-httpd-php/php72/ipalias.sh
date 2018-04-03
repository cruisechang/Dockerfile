

//者定host主機的ip alias，之後container指向這個ip，就能連到host主機 
//create ip alias, run on your machine
sudo ifconfig en0 alias 10.254.254.254 255.255.255.0