user=mi
sshDir=/home/$user/.ssh
keyFile=$sshDir/.keys

ssh-keygen -t rsa -C "$user@gg"
touch $keyFile
cat $sshDir/id_rsa.pub >> $keyFile
chmod 700 $sshDir/
chmod 600 $keyFile
sz $sshDir/id_rsa