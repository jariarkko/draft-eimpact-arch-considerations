## Resiliency and sustainability

Networks and communications are critical functions of the modern digital society. We cannot fully control the reliability of networking and various levels and forms of resiliency can be implemented. The more critical a network segment or connection is, the more resiliency is built.

### Motivation

Resiliency can be implemented within a single routers, e.g. as a backup power supply, between routers and switches as multiple links between the same nodes, having different links between two end points, overlapping cellular coverage, etc. All these necessarily add more hardware to provide the same exact service. Some of that hardware can be fully operational at all times and used to serve the traffic, while other links may be in hot or cold standby depending on the use case.

In cellular networks, wireless coverage is typically built with  significant overlapping coverage. Regulations might dictate how reliable the cellular service is, but also business reasons drive the design of the coverage. A cellular basestation site can consume anything from a few kWh to ten or more kWh per provider. There is extensive work world-wide to optimize the operation of this overlapping coverage, e.g. by sleeping some sites at night time when traffic volumes are low.

Building resiliency is also a question of economics. Acquiring parallel hardware and links is more costly and must be weighted against the goals of the networking service quality.

### Analysis

Resiliency might impact much more the adaptation and the design of the architecture in the future decades than it did in the past 20 years. In building resiliency, there is always the trade-off on how quickly the network can recover from a failure and return full or a reduced operation.

It might be divided in axis like 'Resiliency to power breakage',
'Resiliency to lack of material' that can be filtered with regards their impacts on device, network ... architectures


### Recommendation

In network architecture design, resiliency should be estimated carefully. In the future, we may need to consider, what is good enough resiliency, what is fast enough when recovering from a failure ? Such decisions are always tied to the impact downtime will have on the network users and applications.

