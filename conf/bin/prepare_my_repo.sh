#!/bin/sh
blih -u alexandre.loubeyres@epitech.eu repository create $1;
blih -u alexandre.loubeyres@epitech.eu repository setacl $1 ramassage-tek r;
blih -u alexandre.loubeyres@epitech.eu repository getacl $1;
