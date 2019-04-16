using Plots
#=Scrivi una funzione che, data in ingresso una lista A contenente parole,
 restituisce in output una lista B di interi che rappresentano la lunghezza delle parole contenute in A.=#
function worldsLength(W)
    L=[]
    for s in W
        push!(L, length(s))
    end
    return L
end

#=Scrivi un programma che, passata come parametro una lista di interi, fornisce in output il maggiore tra i numeri contenuti nella lista.=#
function maxNumber(S)
    max=0
    for n in S
        if n>max
            max=n
        end
    end
    return max
end

#=In Svezia, i bambini giocano spesso utilizzando un linguaggio un pó particolare,
detto "rövarspråket", che significa "linguaggio dei furfanti": consiste nel raddoppiare ogni consonante di una parola e inserire una "o" nel mezzo.
Ad esempio la parola "mangiare" diventa "momanongogiarore".
Scrivi una funzione in grado di tradurre una parola o frase in "rövarspråket".=#
function rovar(s)
    t=""
    vocali="aeiouy"
    for c in s
        if c in vocali
            t*=c
        else t*="$(c)o$(c)"
        end
    end
    return t
end

#=Scrivi una funzione a cui vengono passati un valore e una lista di valori,
 e che ti dica in output se il valore passato è presente o meno nella lista.=#
 function ispresent(S, num)
     return num in S
 end

#=Scrivi una funzione a cui passare una stringa come parametro,
e che restituisca un dizionario rappresentante la frequenza di ciscun carattere componente la stringa.
Ad esempio, data una stringa "ababcc", otterremo in risultato {"a": 2, "b": 2, "c": 2}.=#
function frequences(s)
    d= Dict()
    for c in s
        if haskey(d, c)
            d[c]+=1
        else d[c]=1
        end
    end
    return d
end

#=Scrivi una funzione generatrice di password.
La funzione deve generare una stringa alfanumerica di 8 caratteri qualora l'utente voglia una password semplice,
o di 20 caratteri ascii qualora desideri una password più complicata.=#
function passgenerator()
    s=""
    for i in 1:8
        n=rand()
        if n<=1/3
            s*= rand('a':'z')
        elseif n>1/3 && n<=2/3
            s*= rand('A':'Z')
        else s*= rand('0':'9')
        end
    end
    return s
end

#Scrivi una funzione ricorsiva che calcola il fattoriale di un numero dato.
function fattoriale(n)
    if n==0 return 1
    else return n* fattoriale(n-1)
    end
end

#fibonacci
function fib(n)
    if n==0 return 1
    elseif n==1 return 1
    else return fib(n-1) + fib(n-2)
    end
end

#=Un indirizzo MAC (media access control address) è un indirizzo univoco associato dal produttore,
a un chipset per comunicazioni wireless(es WiFi o Bluetooth), composto da 6 coppie alfanumeriche di caratteri.
Un esempio di MAC è 02:33:A5:F2:55:12.
Scrivi una funzione genera_MAC che generi degli indirizzi MAC a partire da coppie alfanumeriche casuali.=#
function genera_MAC()
    s=""
    for i in 1:6
        coppia=""
        for j in 1:2
            r=rand()
            if r<1/2
                coppia*= rand('A':'Z')
            else coppia*= rand('0':'9')
            end
        end
        s*="$coppia:"
    end
    s=chop(s)
    return s
end

#=Il ROT-13 è un semplice cifrario monoalfabetico,
in cui ogni lettera del messaggio da cifrare viene sostituita con quella posta 13 posizioni più avanti nell'alfabeto.
Scrivi una semplice funzione in grado di criptare una stringa passata, o decriptarla se la stringa è già stata precedentemente codificata.=#
function rotThirteen(w)
    cyf=""
    for c in w
        cyf*= c+13
    end
    return cyf
end

#plotting
function plotone()
    gr()    #set background
    x=0.01:10.01
    plot(x, label="linear")
    plot!(x.^2, label="square")
    plot!(x.^3, label="cubic")
    plot!(log.(x), label="logarithmic")
    plot!(broadcast(x->2^x, x), label="exponential")
end

function plottwo()
    gr()    #set background
    x=0.01:5.01
    plot(x, label="linear")
    plot!(x.^2, label="square")
    plot!(x.^3, label="cubic")
    plot!(log.(x), label="logarithmic")
    plot!(x.^(1/2), label="square root")
end

function plotthree()
    unicodeplots()    #set background
    x=-20.0:20.0
    plot(x.^3, label="cubic")
    plot!(x.^4, label="x to the fourth")
    plot!(broadcast(x->2^x, x), label="exponential")
end
