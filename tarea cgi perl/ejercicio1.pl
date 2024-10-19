#!/usr/bin/perl
use strict;
use warnings;

print "Ingrese el nombre de usuario: ";
my $usuario = <STDIN>;
chomp($usuario);

print "Ingrese el dominio: ";
my $dominio = <STDIN>;
chomp($dominio);

#Cooreo electronico
my $correo = "$usuario\@$dominio"; 
print "El correo electrónico es: $correo\n";
