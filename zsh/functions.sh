function are () {
  local usage='are FIND REPLACE [PATH]'

  if [[ $# -eq 2 ]]; then
    for file in $(ack -l $1); do
      sed -i '' -e "s/${1}/${2}/g" $file
    done
  elif [[ $# -eq 3 ]]; then
    for file in $(ack -l $1 $3); do
      sed -i '' -e "s/${1}/${2}/g" $file
    done
  else
    echo "Bad arguments.\n\nUsage:\n${usage}"
    return 1
  fi
}
