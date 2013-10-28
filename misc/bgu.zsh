function bgussh() {
  # ssh-keygen -f ~/.ssh/known_hosts -R lvs.cs.bgu.ac.il
  # don't forget to add public key (using pubkey command) to remote host .ssh/authorized_key  > chmod 755 ~/.ssh > chmod 644 ~/.ssh/authorized_keys
  ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no lidanh@lvs.cs.bgu.ac.il
}

function bgulabs() {
  open http://www.cs.bgu.ac.il/facilities/labs.html
}

function copytobgu() {
  scp $1 lidanh@lvs.cs.bgu.ac.il:$2
}

function bgu-authorized-host() {
  scp ~/.ssh/id_rsa.pub lidanh@lvs.cs.bgu.ac.il:.ssh/authorized_keys
}
