#!/bin/bash

source "$(dirname "$0")/argparse.sh"

arg_positional "[infile]          [The file to parse]"
arg_positional "[outfile]         [The output file]"
arg_optional   "[port-number] [p] [The port number]"
arg_optional   "[outputs]     [o] [The number of outputs]"
arg_boolean    "[verbose]     [v] [Do verbose output]"
arg_boolean    "[flag]        [f] [My important flag]"
arg_array      "[directory]   [d] [A number of directories]"

read -d '' helptxt << EOT
This file illustrates how argparse.sh can be used
The help can be multiple lines
EOT

arg_help              "[$helptxt]"
parse_args

cat << EOT
infile:      $ARG_INFILE
outfile:     $ARG_OUTFILE
port-number: $ARG_PORT_NUMBER
outputs:     $ARG_OUTPUTS
verbose:     $ARG_VERBOSE
flag:        $ARG_FLAG
directory:   ${ARG_DIRECTORY[@]}
EOT
