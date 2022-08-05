
dsd(){
 docker stack deploy "$1" -c /var/data/config/"$1"/"$1".yml
}
dsr(){
 docker stack rm "$1"
}
dsl() {
 docker stack ls
}
dsp() {
 docker stack ps "$1"
}



