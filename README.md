# Clustering discretization methods for generation of material performance databases  in machine learning and design optimization

Repo for Li, Kafka, Gao et al 2019 "Clustering discretization methods for generation of material performance databases  in machine learning and design optimization". If you use our software/code in any way, please cite us!

# Usage overview

The code used for sections 3 and 4 of the paper is provided. The software for SCA/VCA/FCA used in section 2 has *not* been made avaliable. 

*** This package requires the "Deep Learning" MATLAB toolbox ***

This package contains the code used in the sections of the paper as follows:
- /databases. Contains the results of the SCA runs described in Section 3.2 - "Database Generation", and used to train the neural networks in the following sections.
- /FFNN. Contains the code used to produce the results shown in Section 3.4 - "Feed forward neural networks with SCA database"
- /CNN. Contains the code used to produce the results shown in Section 3.6 - "Convolutional neural networks with SCA database"
- /TOPOPT. Contains code used for topology optimization in Section 4

To reproduce the results from each of these sections, one can simply download the repo and follow the associated read_me file.

Data generated with SCA for training the neural networks is provided as a demonstration.

To test out different loading cases for the CNN and FFNN code has been provided to generate a random load history to simulate. This is avaliable by commenting and uncommenting specific lines.

# Notes

Some of the topology optimization code is based on: http://dx.doi.org/10.1007/s001580050176, as noted in the paper.

If you have questions, comments, or suggestions based on the content provided here please post them to the wing-kam-liu-group organization on GitHub. Others might have the same thought, and this way everyone can benefit. Questions regarding the paper itself can, naturally, be addressed to the corresponding author but might also be appropriate for this forum.
