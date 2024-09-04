#!/usr/bin/awk -f

# Definir las expresiones regulares y sus tokens
BEGIN {
    regex[1] = "^[+]$"
    token[1] = "PLUS"
    
    regex[2] = "^[+][+]$"
    token[2] = "PLUS_PLUS"
    
    regex[3] = "^[0-9]+$"
    token[3] = "NUMBER"
    
    regex[4] = "^([0-9]+)\\.([0-9]+)$"
    token[4] = "FLOAT"
}

{
    matched = 0
    for (i = 1; i <= length(regex); i++) {
        if ($0 ~ regex[i]) {
            print token[i]
            matched = 1
            break
        }
    }
    if (!matched) {
        print "UNKNOWN"
    }
}
