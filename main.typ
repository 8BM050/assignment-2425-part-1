#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
)
#set text(
  font: "Avenir",
  size: 10pt
)

#set document(title: [Practical Assignment Part 1],
author: "Max de Rooij (m.d.rooij@tue.nl)")

#align(left, text(17pt)[
  *#context document.title*
])
#align(left, text(15pt)[Systems Biology Models (8BM050)])

This document outlines the practical assignment part 1 for the systems biology models course of academic year 2024-2025. This assignment has to be completed *individually*. 

= Assignment Description
This practical assignment part contains various questions. Each question has a designated number of points that you can score.

= Questions
== Question 1

=== a) 
Consider the following unweighted directed graph:

#image("assets/assignment_1_graph.png", width: 50%)


Define a python variable `adjacency_matrix` that is a `numpy array` representing the adjacency matrix of the graph. The element index `(i, j)` should correspond to the edge from node `i` to node `j`. If there is no edge between the nodes, the element should be zero.

=== b) 
Define two functions: `in_degree` and `out_degree`, that receive the adjacency matrix and a node index and return the in-degree and out-degree of the node, respectively.

=== c) 
Create a plot of the in-degree and out-degree distribution of the graph. The x-axis should represent the degree and the y-axis the number of nodes with that degree.

=== d) 
Use the adjacency matrix to compute the amount of walks of length 6 that exist in the graph that start and end in the same node.

== Question 2
Consider the following description of a differential equation model:

We have two molecules $A$ and $B$. The molecule $A$ is spontaneously converted into a molecule $B$ with a rate $k_1$. In the presence of a molecule $X$, the rate of conversion of $A$ into $B$ is increased with $k_"stim"X$. The molecule $B$ is spontaneously converted back into $A$ with a rate $k_2$. The molecule $X$ does not affect the conversion of $B$ into $A$. Additionally, the molecule $X$ is not produced, but degrades with a rate $k_"deg"$. 

=== a) 
Draw a diagram of the system. Indicate the reactions and the rates of each reaction.

=== b) 
Write down the system of differential equations that describes the system.

=== c)
Given are the following parameter values and initial conditions. 
- $k_1 = 0.002$
- $k_2 = 0.05$
- $k_"stim" = 0.03$
- $k_"deg" = 0.05$

Use the initial conditions:
- $A_0 = 100$ mM
- $B_0 = 0$ mM
- $X_0 = 1$ mM

Derive the units of the rate constants.

=== d)
Implement the system of differential equations and simulate it for 100 minutes. Plot the values of $A$, $B$ and $X$ over time.

== Question 3
In @shi_pharmacokinetic-pharmacodynamic_1993, Shi et al. defined a differential equation model of caffeine in the body. Their model looked like this:

$ 
&(upright(d)C^"pl" (t)) / (upright(d)t) &=& -k_(12)C^"pl" (t) + k_(21)C^"int" (t) - k_(10)C^"pl" (t) \
&(upright(d)C^"int" (t)) / (upright(d)t) &=& k_(12)C^"pl" (t) - k_(21)C^"int" (t) \
$

Where $C^"pl" (t)$ is the concentration of caffeine in the blood plasma, $C^"int" (t)$ is the concentration of caffeine in the interstitial compartment. The parameters are given by $k_(12)$, $k_(21)$, and $k_(10)$. 

=== a)
Draw a diagram of the model showing the direction of the fluxes and the state variables.

=== b) 
The model was calibrated by Shi et al., the parameter values for the given parameters are:
- $k_(12) = 1.64 " h"^(-1)$
- $k_(21) = 1.91 " h"^(-1)$
- $k_(10) = 0.34 " h"^(-1)$

Use the following initial conditions:
- $C^"pl" (0) = 13.0 " "mu upright(g) dot "mL"^(-1)$
- $C^"int" (0) = 0.0 " "mu upright(g) dot "mL"^(-1)$

Simulate the model from 0 to 24 hours and create a figure of the result.

=== c)
Shi et al. reported variability in the $k_(10)$ parameter as a standard deviation of $sigma_(10) = 0.069 " h"^(-1)$. Simulate the model for $k_(10)$ values of $0.34 - sigma_(10)$ and $0.34 + sigma_(10)$ and plot the results in a single figure. Describe the effect of the variability of the $k_(10)$ parameter on the observed concentration values of caffeine.

#bibliography("refs.bib")