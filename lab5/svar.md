# Lab 5

# floc 1

Kost heur: 3880
Tid heur: 0.4768
fel heur: 0%

Antal yi = 1 i heur: 2


# floc 2

Kost heur: 22278
Tid heur: 0.036943912506103516
fel heur: -31.55% 

Antal yi = 1 i heur: 12


# floc 3

Kost heur: 326186
Tid heur: 0.048863887786865234
fel heur: -25.2%

Antal yi = 1 i heur: 2

## olika e värden

### e = 0.01
cost: 107742
yi = 7

### e = 0.1
cost: 159501.0
yi =  3
### e = 1
cost: 326186
yi = 2

### e = 10
cost: 601739
yi = 1

### e = 100
cost = 3.391739e6
yi = 1

# floc 6

Kost heur: 130386
Tid heur: 0.14271283149719238
fel heur: -18.2% 

Antal yi = 1 i heur: 


# floc 7

Kost heur: 184996.0
Tid heur: 0.1222231388092041
fel heur: -5.6%

Antal yi = 1 i heur: 27

# floc 8

kost heur: 314657.0
tid heur: 0.16935086250305176
fel heur: 0%

Antal yi = 1 i heur: 30



# Fråga 4
När diskonteringsfaktorn höjs så att endas en fabrik byggs, beter sig vår heuristik idealt. För högre värden på e då den gav liknande svar som P1. 

# Fråga 5
Vår heuristik tar alltid den billigaste vägen + fabrik kostnad med problemet är att den är "greedy" den utvärderar inte nya möjligheter. Det är fortare än P1 men långsammare än P2 som gör att den har områden som gå. Den verkade passa bäst till större problem floc8, floc1 och floc3 för e = 10, 100 där den gav liknande svar som P1, det vill säga att den passar bättre för större problem.