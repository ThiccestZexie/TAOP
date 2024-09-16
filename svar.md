1.
    b)
        i. 5 mer protein, 534 kalcium
        ii. 0.05625 kr mer per krav energi ökar
        iii. havegryn = -3.1875, kyckling = 12.4688, ägg = 4, mjölk = 0, paj = -3.625, bönor = 4.375 dvs ägg behöver  bli 4 kr billigare
        iv. havregryn
    c)
        i. 92.5 kr -> 98.125 kr
        ii. Ändras ingenting (skuggpris)
        iii. blir 4.5 kr dyrare
    d) 
        Optimal objective value:
        15.05
        ---------------------------------------------------------
        Optimal objective value:
        14.855737704918033
        ------------------------------------------------------------
        Optimal Solution:
        9×3 DataFrame
        Row │ variable                         value    red_cost  
            │ String                           Float64  Float64   
        ─────┼─────────────────────────────────────────────────────
        1 │ port[Quarter Pounder w/ Cheese]  4.38525  0.0
        2 │ port[McLean Deluxe w/ Cheese]    0.0      0.322295
        3 │ port[Big Mac]                    0.0      0.0191475
        4 │ port[Filet-O-Fish]               0.0      0.0853443
        5 │ port[McGrilled Chicken]          0.0      0.713672
        6 │ port[Fries, small]               6.14754  0.0
        7 │ port[Sausage McMuffin]           0.0      0.0624098
        8 │ port[1% Lowfat Milk]             3.42213  0.0
        9 │ port[Orange Juice]               0.0      0.0627213

        14×3 DataFrame
        Row │ constraint         slack       dual      
            │ String             Float64     Float64   
        ─────┼──────────────────────────────────────────
        1 │ minnytta[Cal]      -1965.37    0.0
        2 │ minnytta[Carbo]        0.0     0.0277049
        3 │ minnytta[Protein]   -117.029   0.0
        4 │ minnytta[VitA]         0.0     0.0267541
        5 │ minnytta[VitC]       -32.2131  0.0
        6 │ minnytta[Calc]      -134.221   0.0
        7 │ minnytta[Iron]         0.0     0.0248361

        Super tasty!

    e) 
        Optimal objective value:
 5.363036218769083
    ------------------------------------------------------------
    Optimal Solution:

    ─────┼──────────────────────────────────────────────────────
    1 │ port[Hamburger]                     0.0       0.0201731
    2 │ port[Cheeseburger]                  2.05861   0.0
    3 │ port[Quarter Pounder w/ Cheese]     0.0       0.769431
    4 │ port[McLean Deluxe]                 0.0       1.1486
    5 │ port[McLean Deluxe w/ Cheese]       0.0       1.18499
    6 │ port[Big Mac]                       0.0       0.921018
    7 │ port[Filet-O-Fish]                  0.0       1.06951
    8 │ port[McGrilled Chicken]             0.0       1.56747
    9 │ port[McChicken Sandwich]            0.0       1.63489
    10 │ port[Fries, small]                  0.0       0.645182
    11 │ port[Fries, large]                  0.0       0.881427
    12 │ port[Fries, super]                  0.0       1.07661
    13 │ port[Chicken McNuggets (6 pcs)]     0.0       1.50216
    14 │ port[Chicken McNuggets (9 pcs)]     0.0       2.08607
    15 │ port[Chicken McNuggets (20 pcs)]    0.0       3.91489
    16 │ port[Hot Mustard Sauce]             0.0       0.0818859
    17 │ port[Barbeque Sauce]                0.0       0.0155147
    18 │ port[Sweet 'N Sour Sauce]           4.12272   0.0
    19 │ port[Honey]                        15.7683    0.0
    20 │ port[Chef Salad]                    0.0       0.936544
    21 │ port[Chunky Chicken Salad]          0.03623   0.0
    22 │ port[Garden Salad]                  0.0       0.294735
    23 │ port[Side Salad]                    0.0       0.0548082
    24 │ port[Croutons]                      0.0       0.0465197
    25 │ port[Bacon Bits]                    0.0       0.0272375
    26 │ port[Bleu Cheese Dressing]          0.0       0.321369
    27 │ port[Ranch Dressing]                0.0       0.222816
    28 │ port[1000 Island Dressing]          0.0       0.214246
    29 │ port[Lite Vinaigrette Dressing]     0.0       0.102838
    30 │ port[French Rdcd Cal Dressing]      0.0       0.197106
    31 │ port[Egg McMuffin]                  0.0       0.68317
    32 │ port[Sausage McMuffin]              0.0       0.693793
    33 │ port[Sansage McMuffin with Egg]     0.0       0.593592
    34 │ port[English Muffin]                0.0       0.455712
    35 │ port[Sausage Biscuit]               0.0       0.694746
    36 │ port[Sausage Biscuit with Egg]      0.0       0.988347
    37 │ port[Bacon, Egg & Cheese Biscuit]   0.0       1.00306
    38 │ port[Hash Browns]                   0.0       0.807815
    39 │ port[Breakfast Burrito]             0.0       0.541786
    40 │ port[Cheerios]                      2.26957   0.0
    41 │ port[Wheaties]                      0.0       0.202922
    42 │ port[Apple Danish]                  0.0       0.6148
    43 │ port[Cheese Danish]                 0.0       0.539158
    44 │ port[Cinnamon Raisin Danish]        0.0       0.510486
    45 │ port[Raspberry Danish]              0.0       0.576094
    46 │ port[Lowfat Frozen Yogurt Cone]     0.0       0.617079
    47 │ port[Vanilla Shake]                 0.0       0.429391
    48 │ port[Chocolate Shake]               0.0       0.334594
    49 │ port[Strawberry Shake]              0.0       0.429391
    50 │ port[1% Lowfat Milk]                1.77758   0.0
    51 │ port[Orange Juice]                  0.408178  0.0
    52 │ port[Coca-Cola (small)]             0.0       0.886427
    53 │ port[Coca-Cola (medium)]            0.0       0.99857
    54 │ port[Coca-Cola (large)]             0.0       1.18285
    55 │ port[Diet Coke (small)]             0.0       0.88857
    56 │ port[Diet Coke (medium)]            0.0       1.00071
    57 │ port[Diet Coke (large)]             0.0       1.185
    58 │ port[Sprite (small)]                0.0       0.894997
    59 │ port[Sprite (medium)]               0.0       1.01142
    60 │ port[Sprite (large)]                0.0       1.19999
    61 │ port[H-C Orange Drink (small)]      0.0       0.894997
    62 │ port[H-C Orange Drink (medium)]     0.0       1.01142
    63 │ port[H-C Orange Drink (large)]      0.0       1.20214

    24×3 DataFrame
    Row │ constraint         slack        dual         
        │ String             Float64      Float64      
    ─────┼──────────────────────────────────────────────
    1 │ minnytta[Cal]          0.0      -0.0
    2 │ minnytta[CalFat]    -306.548     0.0
    3 │ minnytta[Fat]        -32.7316    0.0
    4 │ minnytta[SatFat]     -12.9956    0.0
    5 │ minnytta[Chol]      -123.605     0.0
    6 │ minnytta[Sodium]   -3000.0       0.0
    7 │ minnytta[Carbo]      -20.2179    0.0
    8 │ minnytta[Protein]      0.0       0.0134692
    9 │ minnytta[VitA]         0.0       0.0135689
    10 │ minnytta[VitC]         0.0       0.00505887
    11 │ minnytta[Calcium]      0.0       0.0126186
  12 │ minnytta[Iron]         0.0       0.0278307

Not as tasty


f) Optimal objective value:
 8.827245331317153
------------------------------------------------------------
Optimal Solution:
14×3 DataFrame
 Row │ variable            value    red_cost 
     │ String              Float64  Float64  
─────┼───────────────────────────────────────
   1 │ port[spenat]        0.0      0.626851
   2 │ port[fronGHM]       0.0      0.166068
   3 │ port[hassel]        2.11775  0.0
   4 │ port[jordgubbar]    0.0      0.562271
   5 │ port[loktrav]       0.0      0.45816
   6 │ port[smultron]      0.0      0.562271
   7 │ port[graslok]       0.0      0.8681
   8 │ port[bjornbar]      0.0      0.646183
   9 │ port[vin]           0.0      0.175403
  10 │ port[barhaggmispe]  5.36268  0.0
  11 │ port[havtorn]       0.0      0.630961
  12 │ port[rosenkvitten]  0.0      0.313571
  13 │ port[sibirisk]      1.34681  0.0
  14 │ port[apple]         0.0      0.45126

8×3 DataFrame
 Row │ constraint         slack        dual        
     │ String             Float64      Float64     
─────┼─────────────────────────────────────────────
   1 │ minnytta[energi]     0.0        0.000593783
   2 │ minnytta[protein]    0.0        0.0113962
   3 │ minnytta[fett]     -59.6704     0.0
   4 │ minnytta[kolhyd]     0.0        0.0491774

   where is my spenat?!


2. 1)
------------------------------------------------------------
Optimal objective value:
 4.0
------------------------------------------------------------
Optimal Solution:
------------------------------------------------------------
120×2 DataFrame
 Row │ variable  value   
     │ String    Float64 
─────┼───────────────────
   1 │ x[1]          0.0
   2 │ x[2]          0.0
   3 │ x[3]          1.0
   4 │ x[4]          0.0
   5 │ x[5]          0.0
   6 │ x[6]          0.0
   7 │ x[7]          1.0
   8 │ x[8]          0.0
   9 │ x[9]          0.0
  10 │ x[10]         0.0
  11 │ x[11]         0.0
  12 │ x[12]         0.0
  13 │ x[13]         1.0
  14 │ x[14]         0.0
  15 │ x[15]         0.0
  16 │ x[16]         0.0
  17 │ x[17]         0.0
  18 │ x[18]         0.0
  19 │ x[19]         1.0


2.2)
------------------------------------------------------------
Optimal objective value:
 2.0
------------------------------------------------------------
Optimal Solution:
------------------------------------------------------------
200×2 DataFrame
 Row │ variable  value   
     │ String    Float64 
─────┼───────────────────
   1 │ x[1]          0.0
   2 │ x[2]          1.0
   3 │ x[3]          0.0
   4 │ x[4]          1.0

2.3)
------------------------------------------------------------
Optimal objective value:
 4.0
------------------------------------------------------------
Optimal Solution:
------------------------------------------------------------

3.1 
------------------------------------------------------------
Optimal objective value:
 8.0
------------------------------------------------------------
Optimal Solution:
------------------------------------------------------------

+---+---+---+---+---+---+---+---+
|   |   |   | X |   |   |   |   |
+---+---+---+---+---+---+---+---+
|   |   |   |   | X |   |   |   |
+---+---+---+---+---+---+---+---+
|   |   |   |   |   | X |   |   |
+---+---+---+---+---+---+---+---+
|   |   |   |   |   |   | X |   |
+---+---+---+---+---+---+---+---+
|   |   |   |   |   |   |   | X |
+---+---+---+---+---+---+---+---+
|   |   | X |   |   |   |   |   |
+---+---+---+---+---+---+---+---+
| X |   |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+
|   | X |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+

------------------------------------------------------------
Optimal objective value:
 8.0
------------------------------------------------------------
Optimal Solution:
------------------------------------------------------------
+---+---+---+---+---+---+---+---+
| X |   |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+
|   |   |   |   |   |   | X |   |
+---+---+---+---+---+---+---+---+
|   |   |   |   | X |   |   |   |
+---+---+---+---+---+---+---+---+
|   |   |   |   |   |   |   | X |
+---+---+---+---+---+---+---+---+
|   | X |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+
|   |   |   | X |   |   |   |   |
+---+---+---+---+---+---+---+---+
|   |   |   |   |   | X |   |   |
+---+---+---+---+---+---+---+---+
|   |   | X |   |   |   |   |   |
+---+---+---+---+---+---+---+---+


4.0
+-------+-------+-------+
| 8 5 7 | 4 6 9 | 2 3 1 |
| 9 1 4 | 3 7 2 | 6 5 8 |
| 6 3 2 | 1 8 5 | 9 7 4 |
+-------+-------+-------+
| 1 2 8 | 9 4 7 | 3 6 5 |
| 5 4 9 | 6 3 1 | 8 2 7 |
| 7 6 3 | 2 5 8 | 4 1 9 |
+-------+-------+-------+
| 2 9 5 | 8 1 3 | 7 4 6 |
| 4 8 1 | 7 2 6 | 5 9 3 |
| 3 7 6 | 5 9 4 | 1 8 2 |
+-------+-------+-------+