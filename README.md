# EvoGameFBA
### *Evolutionary game simulation of microbial consortia using replicator dynamics and Flux Balance Analysis*  

  EvoGameFBA is an integrated model that simulates population and metabolic dynamics of syntrophic microbial consortia with multiple strains. Combining the advantages from evolutionary game theory and Flux Balance Analysis (FBA), EvoGameFBA aims to find out the syntrophic consortia with metabolite exchange intensities that are evolutionarily stable. 
![EvoGameFBA - how it works](https://github.com/DongxuanZhu/Fitness_CrossFeeding_MasterProject/assets/115150156/a59b4b0d-6ad8-4e88-9acb-594d95e57cef)

* [**What...**](#what)
  * [**What EvoGameFBA can achieve?**](#what1)
  * [**What have been found using EvoGameFBA?**](#what2)
* [**Why...**](#why)
  * [**Why study metabolite exchange intensities?**](#why1)
  * [**Why adopt evolutionary game theory and replicator dynamics?**](#why2)
  * [**Why use Flux Balance Analysis (FBA)?**](#why3)
* [**How...**](#how)
  * [**Dependencies**](#how1)
  * [**Usage**](#how2)
* [**Citations**](#citations)

****
<a name="what"></a>
## What...
<a name="what1"></a>
### What EvoGameFBA can achieve?  
1. **EvoGameFBA simulates strain growth in co-culture settings**. The final growth of a strain is dependent on its growth across encounters with all other strains.
2. **EvoGameFBA explicitly displays metabolic dynamics** throughout growth. It can therefore reflect fitness impacts from different media conditions and metabolite exchange intensities.
3. **EvoGameFBA can flexibly and dynamically tune the metabolic constraints** of strains (e.g. changed metabolite exchange intensities, additional amino acid supply).
<a name="what2"></a>
### What have been found using EvoGameFBA?   
1.  **syntrophic consortia tend to co-existence around certain metabolite exchange thresholds**

 In my in-silico experiments, collaborative Isoleucine and Lysine auxotrophs can evolutionarily co-exist in all replicates when they exchange Isoleucine/Lysine near 0.08-0.1 mmol/gDW/h. They can maintain co-existence states in most replicates when the exchange intensities are below 2.0 mmol/gDW/h.
![Key exchange thresholds supporting evolutionarily stable syntrophic consortia](https://github.com/DongxuanZhu/EvoGameFBA/assets/115150156/07ebc798-9a51-4deb-9a08-462a81e09808)

By testing auxotroph growth in monoculture, I find the thresholds resembles the best intracellular amino acid concentrations of Isoleucine/Lysine.
![Monoculture tests indicating Isoleucine/Lysine auxotroph growth under different forced metabolite exchange intensities](https://github.com/DongxuanZhu/EvoGameFBA/assets/115150156/e2a91a43-27e5-438e-b7e1-3dca18613442)

2.  **Reacquisition of public goods in shared environment supports better co-existence of consortia members**

By excluding reacquisition of public goods by all strains, I find the syntrophic microbial consortia are invaded in all scenarios. Compared to their survival when reacquisition is considered, the results indicate that stable environment allowing public goods accumulation/reacquisition can facilitate maintenance of syntrophic consortia.
![Reacquisition of public goods in shared environment supports better co-existence of consortia members](https://github.com/DongxuanZhu/EvoGameFBA/assets/115150156/e8da4913-a9da-41d5-b8ca-6ed39d1040c3)
****
<a name="why"></a>
## Why...
<a name="why1"></a>
### Why study metabolite exchange intensities?
Metabolite exchange (i.e. cross-feeding) is a common type of interaction among microbes that sustains species diversity (Murillo-Roos et al., 2021) and creates reproducible community compositions and better target yields (Pascual-García et al., 2020; Rivett and Bell, 2018). Existing bioengineering technologies can promote metabolite exchange interactions by synthesizing auxotrophs and tuning expression levels of biosynthesis pathways (Atkinson et al., 2022; Darvishi et al., 2022), but maintenance of such syntrophic interactions in long-term is yet to be addressed. In evolutionary context, engineered metabolite exchange intensities have direct fitness impact on consortia members. Therefore, understanding what metabolite exchange intensities support the best survival of all consortia members could facilitate better bottom-up design of syntrophic microbial consortia.
<a name="why2"></a>
### Why adopt evolutionary game theory and replicator dynamics?
Engineered syntrophic consortia are vulnerable to cheating mutants who free-rides on the public goods. Evolutionary game theory introduces a way to select for the most robust syntrophic consortia - when a consortium cannot be invaded from any mutants, it is evolutionarily stable. Replicator dynamics, the most fundamental model from evolutionary game theory, explicitly shows the fitness dynamics in invasion processes initiated by cheaters. It can therefore provide fitness profiles under certain metabolic conditions.
<a name="why3"></a>
### Why use Flux Balance Analysis (FBA)?
FBA is a powerful tool that predict single-species growth based on its Genome-Scale Metabolic Model (Orth et al., 2010). It respects the non-linearity impact from metabolic reactions and records metabolic fluxes for each growth simulation. Therefore, adopting FBA to simulate growth helps better reflect fitness impacts from media conditions and metabolite exchange intensities.
****
<a name="how"></a>
## How...
<a name="how1"></a>
### Dependencies
EvoGameFBA requires IBM CPLEX Optimizer for Flux Balance Analysis. You may obtain an [academic license of CPLEX](https://www.ibm.com/academic/home). After installing CPLEX, **CPLEX python API** should also be installed.\
Other required python packages may be installed using Anaconda with ```conda_requirements.txt```.
<a name="how2"></a>
### Usage
For more details on how to use EvoGameFBA, please see the DEMO in ```notebook/EvoGameFBA-cocultureSimulations.ipynb``` (An elaborated walkthrough is working in progress). Here's a flowchart of the model framework:
![diagram-01](https://github.com/DongxuanZhu/EvoGameFBA/assets/115150156/e7755c51-25d1-473b-82b1-0dbcf785ca17)


****
<a name="citations"></a>
## Citations


Atkinson, E., Tuza, Z., Perrino, G., Stan, G.-B., Ledesma-Amaro, R., 2022. Resource-aware whole-cell model of division of labour in a microbial consortium for complex-substrate degradation. Microb Cell Fact 21, 115. https://doi.org/10.1186/s12934-022-01842-0 \
Darvishi, F., Rafatiyan, S., Abbaspour Motlagh Moghaddam, M.H., Atkinson, E., Ledesma-Amaro, R., 2022. Applications of synthetic yeast consortia for the production of native and non-native chemicals. Critical Reviews in Biotechnology 1–16. https://doi.org/10.1080/07388551.2022.2118569 \
Murillo-Roos, M., Abdullah, H.S.M., Debbar, M., Ueberschaar, N., Agler, M.T., 2021. Niche separation in cross-feeding sustains bacterial strain diversity across nutrient environments and may increase chances for survival in nutrient-limited leaf apoplasts (preprint). Microbiology. https://doi.org/10.1101/2021.11.07.467568 \
Orth, J.D., Thiele, I., Palsson, B.Ø., 2010. What is flux balance analysis? Nat Biotechnol 28, 245–248. https://doi.org/10.1038/nbt.1614 \
Pascual-García, A., Bonhoeffer, S., Bell, T., 2020. Metabolically cohesive microbial consortia and ecosystem functioning. Phil. Trans. R. Soc. B 375, 20190245. https://doi.org/10.1098/rstb.2019.0245 \
Rivett, D.W., Bell, T., 2018. Abundance determines the functional role of bacterial phylotypes in complex communities. Nat Microbiol 3, 767–772. https://doi.org/10.1038/s41564-018-0180-0

