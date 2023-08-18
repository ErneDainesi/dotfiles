# Defined in - @ line 1
function setUS --wraps='setxkbmap -layout us -variant intl' --description 'alias setUS setxkbmap -layout us -variant intl'
  setxkbmap -layout us -variant intl $argv;
end
