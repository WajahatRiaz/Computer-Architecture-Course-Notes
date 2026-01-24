# Chapter 1 Notes

What is computer architecture? <br>

Why do we need computer architecture? 
- we want to improve performance i.e. size, speed, power, energy efficiency
- improving abilities i.e. 3d graphics, debugging support, security


Designing a machine with current technology and parts lead to obselete machine. Therefore, one must anticipate the technology trends to build machines for the future. Now the question is that what are these trends? 

## Moore's Law
Every 18 months the number of transistors doubles on on a chip area

## Denard Scaling


## Memory Wall
The processor is getting faster over the years but memory is not getting faster. Thus there's a gap called the memory wall. We use caches for addressing these challenges.


## Power Wall 
In modern processor design we can't just arbitrarily decrease the voltage. We hit a power wall. More details are given below:

### Dynamic Power
$P = $ $\frac{1}{2}$ $.C.V^2.f$ <br>

We also mulltiply it by an activity factor otherwise one might assume that processor is switching on every clock cycle. 

### Static Power
This is basically leakage due to low voltage. Transistor are also getting smaller which cause leakage. 

There is U curve such that beying a certain point when voltage is increased then the dynamic power increases. Similarly, when the voltage drops then the static power increases. 

Content coming soon...

<!-- Add your chapter 1 notes here -->
