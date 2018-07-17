#!/usr/bin/perl
use strict;
use warnings;

open (FILE1,"./1.txt")||die "can't open this file:$!";
open (FILE2,".>/2.txt")||die "can't open this file:$!";
while (<FILE1>)
{
   my $oneline=$_;
   chomp;
   print FILE2 "$oneline\n";

}

close (FILE1); 
close (FILE2); 
