def simple_automation():
    Qx = [0.07230,0.02765,0.00851,0.00636,0.00641,0.00899,0.00814,0.00984,0.01497,0.02184,0.03175,0.04509,0.06498]
    dx = []
    lx = []
    Lx = []
    n = 1
    deaths = 0
    starting_cohort = 100000 
    for i in Qx:
        deaths = i * starting_cohort
        starting_cohort = starting_cohort - deaths
        dx.append(round(deaths, 1))
        lx.append(round(starting_cohort, 1))
    
    for i in range(len(lx)-1):
        Lx.append((lx[i]+lx[i+1])/2)
    
    print(f'Lx = {Lx}')
    print(f'dx = {dx}')
    print(f'lx = {lx}')
    
simple_automation()