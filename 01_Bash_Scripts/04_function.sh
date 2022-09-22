#!/bin/bash
function myFunction {
   for i in "$*"; do echo "$i"; done;
}

myFunction "juanito" "pepe"
