[Ecb, Evb, Efn, Efp] = dfana.QFLs(sol)
Unrecognized function or variable 'sol'.
 
 [Ecb, Evb, Efn, Efp] = dfana.QFLs(sol);
Unrecognized function or variable 'sol'.
 
 [Ecb, Evb, Efn, Efp] = dfana.QFLs(sol.ion);
Unable to resolve the name sol.ion.
 
 [Ecb, Evb, Efn, Efp] = dfana.QFLs(JVsol.dk.f);
Ecb(193.8)
Array indices must be positive integers or logical values.
 
plot(Ecb(:,1))
plot(Ecb(:,end))
plot(Ecb(1,:))
plot(par.x,Ecb(1,:))
Error using plot
Vectors must be the same length.
 
plot(JVsol.dk.f.x,Ecb(1,:))
Jvsol.dk.f.t
Unable to resolve the name Jvsol.dk.f.t.
 
Did you mean:
JVsol.dk.f.t

ans =

  Columns 1 through 13

         0    2.0202    4.0404    6.0606    8.0808   10.1010   12.1212   14.1414   16.1616   18.1818   20.2020   22.2222   24.2424

  Columns 14 through 26

   26.2626   28.2828   30.3030   32.3232   34.3434   36.3636   38.3838   40.4040   42.4242   44.4444   46.4646   48.4848   50.5051

  Columns 27 through 39

   52.5253   54.5455   56.5657   58.5859   60.6061   62.6263   64.6465   66.6667   68.6869   70.7071   72.7273   74.7475   76.7677

  Columns 40 through 52

   78.7879   80.8081   82.8283   84.8485   86.8687   88.8889   90.9091   92.9293   94.9495   96.9697   98.9899  101.0101  103.0303

  Columns 53 through 65

  105.0505  107.0707  109.0909  111.1111  113.1313  115.1515  117.1717  119.1919  121.2121  123.2323  125.2525  127.2727  129.2929

  Columns 66 through 78

  131.3131  133.3333  135.3535  137.3737  139.3939  141.4141  143.4343  145.4545  147.4747  149.4949  151.5152  153.5354  155.5556

  Columns 79 through 91

  157.5758  159.5960  161.6162  163.6364  165.6566  167.6768  169.6970  171.7172  173.7374  175.7576  177.7778  179.7980  181.8182

  Columns 92 through 100

  183.8384  185.8586  187.8788  189.8990  191.9192  193.9394  195.9596  197.9798  200.0000

[Ecb_max,i_max]=find(max(JVsol.dk.f.u(end,:)))

Ecb_max =

     1


i_max =

     1

[J, j, xmesh] = dfana.calcJ(JVsol.dk.f)

J = 

  struct with fields:

       n: [100×220 double]
       p: [100×220 double]
       a: [100×220 double]
       c: [100×220 double]
    disp: [100×220 double]
     tot: [100×220 double]


j = 

  struct with fields:

       n: [100×220 double]
       p: [100×220 double]
       a: [100×220 double]
       c: [100×220 double]
    disp: [100×220 double]


xmesh =

   1.0e-04 *

  Columns 1 through 13

    0.0000    0.0001    0.0001    0.0002    0.0003    0.0003    0.0004    0.0005    0.0006    0.0007    0.0008    0.0009    0.0011

  Columns 14 through 26

    0.0012    0.0014    0.0015    0.0017    0.0019    0.0021    0.0023    0.0026    0.0028    0.0031    0.0034    0.0037    0.0041

  Columns 27 through 39

    0.0044    0.0048    0.0052    0.0056    0.0061    0.0066    0.0071    0.0077    0.0083    0.0089    0.0096    0.0103    0.0111

  Columns 40 through 52

    0.0119    0.0127    0.0136    0.0145    0.0155    0.0166    0.0177    0.0188    0.0200    0.0213    0.0227    0.0241    0.0255

  Columns 53 through 65

    0.0271    0.0287    0.0304    0.0322    0.0340    0.0359    0.0379    0.0400    0.0422    0.0444    0.0467    0.0492    0.0517

  Columns 66 through 78

    0.0543    0.0570    0.0598    0.0627    0.0656    0.0687    0.0719    0.0752    0.0785    0.0820    0.0855    0.0892    0.0930

  Columns 79 through 91

    0.0968    0.1007    0.1048    0.1089    0.1131    0.1175    0.1219    0.1263    0.1309    0.1356    0.1403    0.1451    0.1500

  Columns 92 through 104

    0.1550    0.1600    0.1651    0.1703    0.1755    0.1808    0.1861    0.1915    0.1969    0.2024    0.2079    0.2134    0.2190

  Columns 105 through 117

    0.2246    0.2302    0.2358    0.2415    0.2471    0.2528    0.2584    0.2641    0.2697    0.2753    0.2809    0.2865    0.2920

  Columns 118 through 130

    0.2975    0.3030    0.3084    0.3138    0.3191    0.3244    0.3296    0.3348    0.3399    0.3449    0.3499    0.3548    0.3596

  Columns 131 through 143

    0.3643    0.3690    0.3736    0.3781    0.3825    0.3868    0.3910    0.3951    0.3992    0.4031    0.4070    0.4107    0.4144

  Columns 144 through 156

    0.4179    0.4214    0.4247    0.4280    0.4312    0.4343    0.4372    0.4401    0.4429    0.4456    0.4482    0.4507    0.4532

  Columns 157 through 169

    0.4555    0.4578    0.4599    0.4620    0.4640    0.4659    0.4678    0.4695    0.4712    0.4728    0.4744    0.4758    0.4772

  Columns 170 through 182

    0.4786    0.4799    0.4811    0.4822    0.4833    0.4844    0.4854    0.4863    0.4872    0.4880    0.4888    0.4896    0.4903

  Columns 183 through 195

    0.4910    0.4916    0.4922    0.4928    0.4933    0.4938    0.4943    0.4947    0.4951    0.4955    0.4959    0.4962    0.4965

  Columns 196 through 208

    0.4968    0.4971    0.4973    0.4976    0.4978    0.4980    0.4982    0.4984    0.4985    0.4987    0.4988    0.4990    0.4991

  Columns 209 through 220

    0.4992    0.4993    0.4994    0.4995    0.4996    0.4996    0.4997    0.4998    0.4998    0.4999    0.4999    0.5000

help dfana.calcj
--- dfana.calcj not found. Showing help for dfana.calcJ instead. ---

  Current, J and flux, j calculation from continuity equations
  Calculated on the i+0.5 grid

dfana.calcJ
Not enough input arguments.

Error in dfana.calcJ (line 210)
            [u,t,xmesh,par,dev,n,p,a,c,V] = dfana.splitsol(sol);
 
help dfana.calcJ
  Current, J and flux, j calculation from continuity equations
  Calculated on the i+0.5 grid

[J_max,i_max]=max(J)
Error using max
Invalid data type. First argument must be numeric or logical.
 
J

J = 

  struct with fields:

       n: [100×220 double]
       p: [100×220 double]
       a: [100×220 double]
       c: [100×220 double]
    disp: [100×220 double]
     tot: [100×220 double]

[J_max,i_max]=max(J.tot)

J_max =

  Columns 1 through 13

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 14 through 26

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 27 through 39

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 40 through 52

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 53 through 65

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 66 through 78

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 79 through 91

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 92 through 104

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 105 through 117

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 118 through 130

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 131 through 143

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 144 through 156

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 157 through 169

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 170 through 182

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 183 through 195

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 196 through 208

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844

  Columns 209 through 220

    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844    0.4844


i_max =

  Columns 1 through 22

    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91

  Columns 23 through 44

    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91

  Columns 45 through 66

    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91

  Columns 67 through 88

    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91

  Columns 89 through 110

    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91

  Columns 111 through 132

    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91

  Columns 133 through 154

    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91

  Columns 155 through 176

    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91

  Columns 177 through 198

    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91

  Columns 199 through 220

    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91    91

size(J.tot)

ans =

   100   220

[J_max,i_max]=max(J.tot(:,220))

J_max =

    0.4844


i_max =

    91

[J_max,i_max]=find(J.tot(:,220)>0.45)

J_max =

    89
    90
    91
    92
    93
    94


i_max =

     1
     1
     1
     1
     1
     1

help find
 find   Find indices of nonzero elements.
    I = find(X) returns the linear indices corresponding to 
    the nonzero entries of the array X.  X may be a logical expression. 
    Use IND2SUB(SIZE(X),I) to calculate multiple subscripts from 
    the linear indices I.
  
    I = find(X,K) returns at most the first K indices corresponding to 
    the nonzero entries of the array X.  K must be a positive integer, 
    but can be of any numeric type.
 
    I = find(X,K,'first') is the same as I = find(X,K).
 
    I = find(X,K,'last') returns at most the last K indices corresponding 
    to the nonzero entries of the array X.
 
    [I,J] = find(X,...) returns the row and column indices instead of
    linear indices into X. This syntax is especially useful when working
    with sparse matrices.  If X is an N-dimensional array where N > 2, then
    J is a linear index over the N-1 trailing dimensions of X.
 
    [I,J,V] = find(X,...) also returns a vector V containing the values
    that correspond to the row and column indices I and J.
 
    Example:
       A = magic(3)
       find(A > 5)
 
    finds the linear indices of the 4 entries of the matrix A that are
    greater than 5.
 
       [rows,cols,vals] = find(speye(5))
 
    finds the row and column indices and nonzero values of the 5-by-5
    sparse identity matrix.
 
    See also sparse, ind2sub, RELOP, nonzeros.

    Documentation for find
    Other functions named find

i_theroshold=find(J.tot(:,220)>0.45)

i_theroshold =

    89
    90
    91
    92
    93
    94

Ecb(i_theroshold(1))

ans =

   -3.8000

Ecb(i_theroshold(1))-Efn(i_theroshold(1))

ans =

    0.4493

Ecb(i_theroshold(1),221)-Efn(i_theroshold(1),221)

ans =

    0.4042

Ecb(i_theroshold(end),221)-Efn(i_theroshold(end),221)

ans =

    0.4042

Ecb(i_theroshold(end),10)-Efn(i_theroshold(end),10)

ans =

    0.4345

Ecb(i_theroshold(3),10)-Efn(i_theroshold(3),10)

ans =

    0.4314
