# ReplicatorFBA
## *Evolutionary game simulation of microbial communities with replicator dynamics and Flux Balance Analysis*

  ReplicatorFBA is a model framework that simulates population and metabolic dynamics of a two-species microbial community. Combining the advantages from evolutionary game theory and Flux Balance Analysis (FBA), ReplicatorFBA aims to find out the metabolite exchange intensities that are evolutionarily stable. 
![ReplicatorFBA - how it works](https://github.com/DongxuanZhu/Fitness_CrossFeeding_MasterProject/assets/115150156/a59b4b0d-6ad8-4e88-9acb-594d95e57cef)

## What ...
### What ReplicatorFBA can achieve?
### What have been found using ReplicatorFBA?

## Why ...
### Why care about metabolite exchange intensities?
Metabolite exchange (i.e. cross-feeding) is a common type of interaction among microbes that sustains species diversity (Murillo-Roos et al., 2021) and creates reproducible community compositions and better target yields (Pascual-García et al., 2020; Rivett and Bell, 2018). Existing bioengineering technologies can promote metabolite exchange interactions by synthesizing auxotrophs and tuning expression levels of biosynthesis pathways (Atkinson et al., 2022; Darvishi et al., 2022), but maintenance of such syntrophic interactions in long-term is yet to be addressed. In evolutionary context, engineered metabolite exchange intensities have direct fitness impact on consortia members. Therefore, understanding what metabolite exchange intensities support the best survival of all consortia members could facilitate better bottom-up design of syntrophic microbial consortia.

### Why use replicator dynamics?
Engineered syntrophic consortia are vulnerable to cheating mutants who free-rides on the public goods. Replicator dynamics, the most fundamental model from evolutionary game theory, explicitly shows the fitness dynamics and resulting growth dynamics between cooperators and cheaters. 

### Why use FBA?
FBA is a powerful tool that predict single-species growth based on its Genome-Scale Metabolic Model (Orth et al., 2010). It respects the non-linearity impact from metabolic reactions and records metabolic fluxes for each growth simulation. Therefore, adopting FBA to simulate growth helps better reflect fitness impacts from media conditions and metabolite exchange intensities.

## How ...
