# Project Design of Sustainable Energy Supply

Microgrids offer a potential infrastructure that can help facilitate the transition to a more decentralized approach in constructing power grids, which could drive down the expenses needed through better matching supply and demand, whilst increasing the underlying reliability and reducing the overall environmental impact.

In this project, we design a micro-grid environment from scratch in MATLAB, in both externally connected (grid) and islanded (off-grid) variants. The report presents the main objectives of the two systems, and outlines the reasoning behind the design choices to affect sustainability, affordability and efficiency.

The code for the controller can be found in the Assignment slx file.s

![External Grid-Connected System](/results/Gridmodel1.png)

A connected grid with a separate bus. The solar energy, wind energy and the load
from the households are connected to this bus. These connections together form the bus. Scopes are added to the wind energy, solar energy, load and the grid. The given training data is from the years 2013, 2014 and 2015. For each scope, only the active power line is added to it. Since reactive power does occur at the grid, but in this system/model is not accounted for. It also does occur at the load, but the power factor is set to 1, so in total, there is no reactive power.

![Islanded Off-Grid System](/results/Islandmodel8.png)

When the grid-connected microgrid switches to islanded mode, the power flowing from the grid is cut off. Therefore the microgrid will suffer a significant power deficiency due to the loss of the grid. Insufficient energy generation will cause outages for the load and will lead to energy losses. In order to prevent energy losses as much as possible, the frequency of the microgrid should be regulated, which will be done by the voltage frequency regulator (Figure above). Additionally a gener- ator, energy storage and a controller are added to improve the reliability that a grid can give when operating in islanded mode. The functions of these components will be discussed in the discussion
section.