# ReplicatorFBA
## *Evolutionary game simulation of microbial communities with replicator dynamics and Flux Balance Analysis*

  ReplicatorFBA is an integrated model that simulates population and metabolic dynamics of syntrophic microbial consortia with multiple strains. Combining the advantages from evolutionary game theory and Flux Balance Analysis (FBA), ReplicatorFBA aims to find out the metabolite exchange intensities that support evolutionarily stable syntrophic consortia. 
![ReplicatorFBA - how it works](https://github.com/DongxuanZhu/Fitness_CrossFeeding_MasterProject/assets/115150156/a59b4b0d-6ad8-4e88-9acb-594d95e57cef)

## What ...
### What ReplicatorFBA can achieve?
%add gifs
1. **ReplicatorFBA simulates strain growth in co-culture settings**. The final growth of a strain is dependent on its growth across encounters with all other strains.
2. **ReplicatorFBA explicitly displays metabolic dynamics** throughout growth. It can therefore reflect fitness impacts from different media conditions and metabolite exchange intensities.
3. **ReplicatorFBA explicitly demonstrates frequency-dependent selection processes** with the help of replicator equations.
4. **ReplicatorFBA can flexibly and dynamically tune the metabolic constraints** of strains (e.g. changed metabolite exchange intensities, additional amino acid supply).

### What have been found using ReplicatorFBA?
1. **Metabolite exchange intensities tend to support evolutionarily stable syntrophic consortia around certain thresholds**. In my experiments, Isoleucine and Lysine auxotrophs can evolutionarily co-exist in all replicates when they exchange Isoleucine/Lysine near 0.08-0.1 mmol/gDW/h.
%add unit
![Key thresholds supporting evolutionarily stable syntrophic consortia](https://github.com/DongxuanZhu/Fitness_CrossFeeding_MasterProject/assets/115150156/e52533ee-21ec-4591-ace7-debbb4e664bb)
By testing auxotroph growth in monoculture, I find the thresholds resembles the best intracellular amino acid concentrations of Isoleucine/Lysine.
%add figure indicating the same thresholds
2. **Reacquisition of public goods in shared environment supports better co-existence of consortia members**. By excluding reacquisition of public goods by all strains, I find the syntrophic microbial consortium is invaded in all scenarios. Compared to its survival when reacquisition is considered, the results indicate that stable environment allowing public goods accumulation/reacquisition can facilitate maintenance of syntrophic consortia.
%add figure

## Why ...
### Why care about metabolite exchange intensities?
Metabolite exchange (i.e. cross-feeding) is a common type of interaction among microbes that sustains species diversity (Murillo-Roos et al., 2021) and creates reproducible community compositions and better target yields (Pascual-García et al., 2020; Rivett and Bell, 2018). Existing bioengineering technologies can promote metabolite exchange interactions by synthesizing auxotrophs and tuning expression levels of biosynthesis pathways (Atkinson et al., 2022; Darvishi et al., 2022), but maintenance of such syntrophic interactions in long-term is yet to be addressed. In evolutionary context, engineered metabolite exchange intensities have direct fitness impact on consortia members. Therefore, understanding what metabolite exchange intensities support the best survival of all consortia members could facilitate better bottom-up design of syntrophic microbial consortia.

### Why use replicator dynamics?
Engineered syntrophic consortia are vulnerable to cheating mutants who free-rides on the public goods. Replicator dynamics, the most fundamental model from evolutionary game theory, explicitly shows the fitness dynamics and resulting growth dynamics between cooperators and cheaters. 

### Why use FBA?
FBA is a powerful tool that predict single-species growth based on its Genome-Scale Metabolic Model (Orth et al., 2010). It respects the non-linearity impact from metabolic reactions and records metabolic fluxes for each growth simulation. Therefore, adopting FBA to simulate growth helps better reflect fitness impacts from media conditions and metabolite exchange intensities.

## How ...
### Dependencies
ReplicatorFBA requires IBM CPLEX Optimizer for Flux Balance Analysis. You may obtain an [academic license of CPLEX](https://www.ibm.com/academic/home). After installing CPLEX, **CPLEX python API** should also be installed.\
Other required python packages may be installed using Anaconda with ```conda_requirements.txt```.
### Procedures
For more details on how to use ReplicatorFBA, please see the DEMO in ```notebook/ReplicatorFBA-cocultureSimulations.ipynb``` (An elaborated walkthrough is working in progress).
