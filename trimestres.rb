ventas = {
Enero: 15000,
Febrero: 22000,
Marzo: 12000,
Abril: 17000,
Mayo: 81000,
Junio: 13000,
Julio: 21000,
Agosto: 41200,
Septiembre: 25000,
Octubre: 21500,
Noviembre: 91000,
Diciembre: 21000
}

def mostrarTrimestres(hash)
    quaters = []
    valores = hash.values
    nuevo_hash = {}
    acum=0
    j = 0
    while j <= valores.size  
            if j==0
                acum = acum + valores[j]
            elsif j%3!=0 
                acum = acum + valores[j]
            else
                quaters.push(acum)
                acum = valores[j]
            end 
            j+=1
    end
    quaters.size.times do |i|
        nuevo_hash["Q#{i+1}"]= quaters[i]
    end
    nuevo_hash
   
end

print mostrarTrimestres(ventas)