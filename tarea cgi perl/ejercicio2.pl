use strict;
use warnings;
use List::Util qw(max min);

#Funcion para calcular el promedio
sub calcular_promedio {
    my @notas = @_;  # Recibe las notas

    # Encontramos la nota máxima y mínima usando max y min
    my $max_nota = max(@notas);
    my $min_nota = min(@notas);

    # Reemplazamos la nota mínima por la máxima 
    my $suma = 0;
    # Y sumamos
    foreach my $nota (@notas) {
        $suma += ($nota == $min_nota) ? $max_nota : $nota;  
    }

    # Retorna el promedio
    return $suma / @notas;  
}

# Notas
my @calificaciones;
#Bucle while para ingresar las notas
while (@calificaciones < 4) {
    print "Ingrese la nota " . (scalar(@calificaciones) + 1) . ": ";
    chomp(my $entrada = <STDIN>);  
    push @calificaciones, $entrada;  
}

# Imprime el promedio
print "El promedio es: ", calcular_promedio(@calificaciones), "\n";

