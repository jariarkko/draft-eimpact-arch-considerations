---
title: "Architectural Considerations for Environmentally Sustainable Internet Technology"
abbrev: "Sustainable Internet Architecture"
category: info

docname: draft-various-eimpact-arch-considerations-latest
submissiontype: IETF  # also: "independent", "editorial", "IAB", or "IRTF"
number:
date:
consensus: true
v: 3
# area: AREA
# workgroup: WG Working Group
keyword:
 - next generation
 - unicorn
 - sparkling distributed ledger
venue:
#  group: E-Impact
#  type: Program
#  mail: WG@example.com
#  arch: https://example.com/WG
  github: "jariarkko/draft-eimpact-arch-considerations"
  latest: "https://jariarkko.github.io/draft-eimpact-arch-considerations/draft-eimpact-arch-considerations.html"

author:
 -
    fullname: Michael Welzl
    organization: University of Oslo
    email: michawe@ifi.uio.no

 -
    fullname: Emile Stephan
    organization: Orange
    email: emile.stephan@orange.com

 -
    fullname: Eve Schooler
    organization: University of Oxford
    email: eve.schooler@gmail.com

 -
    fullname: Sebastien Rumley
    organization: HES-SO
    email: sebastien.rumley@hes-so.ch

 -
    fullname: Ali Rezaki
    organization: Nokia
    email: ali.rezaki@nokia.com

 -
    fullname: Jukka Manner
    organization: Aalto University
    email: jukka.manner@aalto.fi

 -
    fullname: Carlos Pignataro
    organization: Blue Fern Consulting
    email: cpignata@gmail.com

 -
    fullname: Marisol Palmero
    organization: Cisco
    email: mpalmero@cisco.com

 -
    fullname: Jan Lindblad
    organization: All For Eco
    email: jan.lindblad+ietf@for.eco

 -
    fullname: Suresh Krishnan
    organization: Cisco
    email: sureshk@cisco.com

 -
    fullname: Ari Keränen
    organization: Ericsson
    email: ari.keranen@ericsson.com

 -
    fullname: Hesham ElBakoury
    email: helbakoury@gmail.com

 -
    fullname: Luis M. Contreras
    organization: Telefonica
    email: contreras.ietf@gmail.com

 -
    fullname: Alexander Clemm
    organization: Independent
    email: ludwig@clemm.org

 -
    fullname: Jari Arkko
    organization: Ericsson
    email: jari.arkko@gmail.com

normative:

informative:
  RFC6817:
  RFC8428:
  RFC9193:
  RFC9547:
  RFC9657:
  I-D.ietf-tvr-requirements:
  I-D.ietf-tvr-schedule-yang:
  I-D.ietf-tvr-alto-exposure:
  I-D.irtf-nmrg-green-ps:
  I-D.pignataro-enviro-sustainability-architecture:
  I-D.pignataro-enviro-sustainability-consid:
  I-D.cparsk-eimpact-sustainability-considerations:
  NotTradeOff:
    title: "Not a Trade-Off: On the Wi-Fi Energy Efficiency of Effective Internet Congestion Control"
    date: 2022
    author:
     - ins: M. Welzl
    seriesinfo: "17th Wireless On-Demand Network Systems and Services Conference (WONS), Oppdal, Norway, pp. 1-4, doi: 10.23919/WONS54113.2022.9764413"
  CBORGreener:
    title: "CBOR is Greener than JSON"
    date: October 2022
    author:
      - ins: B. Moran
      - ins: H. Birkholz
      - ins: C. Bormann
    seriesinfo: "Position paper in the 2022 IAB Workshop Environmental Impact of Internet Applications and Systems"
  Sammy:
    title: "Sammy: smoothing video traffic to be a friendly internet neighbor"
    date: 2023
    author:
     - ins: Bruce Spang
     - ins: Shravya Kunamalla
     - ins: Renata Teixeira
     - ins: Te-Yuan Huang
     - ins: Grenville Armitage
     - ins: Ramesh Johari
     - ins: Nick McKeown
    seriesinfo: "In Proceedings of the ACM SIGCOMM 2023 Conference (ACM SIGCOMM '23). Association for Computing Machinery, New York, NY, USA, 754–768. https://doi.org/10.1145/3603269.3604839"
  Unifying:
    title: "Unifying Top-Down and Bottom-Up Approaches to Evaluate Network Energy Consumption"
    date: November 2015
    author:
     - ins: K. Ishii
     - ins: J. Kurumida
     - ins: K.-i. Sato
     - ins: T. Kudoh
     - ins: S. Namiki
    seriesinfo: "In Journal of Lightwave Technology, vol. 33, no. 21, pp. 4395-4405, doi: 10.1109/JLT.2015.2469145"
  Modeling:
    title: "Modeling Data-Plane Power Consumption of Future Internet Architectures"
    date: 2016
    author:
      - ins: C. Chen
      - ins: D. Barrera
      - ins: A. Perrig
    seriesinfo: "IEEE 2nd International Conference on Collaboration and Internet Computing (CIC), Pittsburgh, PA, USA, pp. 149-158, doi: 10.1109/CIC.2016.031"
  Segment:
    title: "Exploiting Segment Routing and SDN Features for Green Traffic Engineering"
    date: 2022
    author:
      - ins: C.-H. Lung
      - ins: H. ElBakoury
    seriesinfo: "IEEE 8th International Conference on Network Softwarization (NetSoft), Milan, Italy, pp. 49-54, doi: 10.1109/NetSoft54395.2022.9844091"
  Experiment:
    title: "Green Network Traffic Engineering Using Segment Routing: An Experiment Report"
    date: 2024
    author:
      - ins: J.-V. Groningen
      - ins: C.-H. Lung
    seriesinfo: "2024 20th International Conference on Network and Service Management (CNSM)"
  LoadShifting:
    title: "Reducing energy costs in Internet-scale distributed systems using load shifting"
    date: 2014
    author:
      - ins: V. Mathew
      - ins: R. K. Sitaraman
      - ins: P. Shenoy
    seriesinfo: "Sixth International Conference on Communication Systems and Networks (COMSNETS), Bangalore, India, pp. 1-8, doi: 10.1109/COMSNETS.2014.6734894"
  LinkAggregation:
    title: "IEEE Standard for Local and Metropolitan Area Networks--Link Aggregation"
    date: May 2020
    seriesinfo: "IEEE STD 802.1AX-2020 (Revision of IEEE STD 802.1AX-2014): 1–333. doi:10.1109/IEEESTD.2020.9105034. ISBN 978-1-5044-6428-4"
  Baseline:
    title: "A New Proposed Energy Baseline Model for a Data Center as a Tool for Energy Efficiency Evaluation"
    date: April 2019
    author:
      - ins: S. Livieratos
      - ins: S. Panetsos
      - ins: A. Fotopoulos
      - ins: M. Karagiorgas
    seriesinfo: "International Journal of Power and Energy Research, Vol. 3, No. 1"
  BenchmarkingFramework:
    title: "A Power Benchmarking Framework for Network Devices"
    date: 2009
    author:
      - ins: P. Mahadevan
      - ins: P. Sharma
      - ins: S. Banerjee
      - ins: P. Ranganathan
    seriesinfo: "In L. Fratta et al. (Eds.): NETWORKING 2009, LNCS 5550, pp. 795–808"
  UNSDG:
    title: "United Nations Sustainable Development Goals"
    date: 2017
    seriesinfo: "https://unstats.un.org/sdgs"
  LCAandUsage:
    title: "Carbon Topography Representation: Improving Impacts of Data Center Lifecycle"
    date: 2025
    author:
      - ins: O. Weppe
      - ins: D. Bekri
      - ins: L. Guibert
      - ins: L. Aubet
      - ins: J.-C. Prévotet
      - ins: M. Pelcat
      - ins: S. Rumley
    seriesinfo: "Proceedings of the 4th Workshop on Sustainable Computer Systems (HotCarbon'25)"

--- abstract

This document discusses protocol and network architecture aspects that
may have an impact on the sustainability of network technology. The
focus is on providing guidelines that can be helpful for protocol
designers and network architects, where such guidelines can be given.

--- middle

# Introduction

Environmental sustainability is an important consideration in networking. Both for
ensuring that networking technology can enable societies to operate in
an environmentally sustainable manner and that the networks themselves are environmentally sustainable.

This document discusses protocol and network architecture aspects that
may have an impact on the environmental sustainability of network technology. For brevity, we will use the term sustainability to refer to environmental sustainability. We do note that sustainability as a term is widely used to refer to different notions of sustainability, and the most well-known larger definition of sustainability can be seen from the United Nations Sustainable Development Goals (UN SDG) {{UNSDG}}.

Negative sustainability impacts like carbon emissions from networking comes from three primary categories: hardware manufacturing, direct energy usage and construction work.  The last category is out of scope of this document because networking has limited means to impact construction work
itself.  The manufacturing of networking hardware, both for fixed and wireless networks, is a significant source of emissions, and recycling of ICT equipment is still limited.  Direct energy usage of networking and the source of the energy have been the primary concerns, but as the world moves towards greener energy production, the relative negative impacts related to manufacturing becomes more prominent.

When good design and architecture can improve the sustainability of
networks, they should certainly be applied to designing new protocols
and building networks. Intuitively, protocol and network architecture choices can have an impact on sustainability.  At the very least the right design and architecture
can make it possible to have a positive impact, but of course the
architecture alone is not enough.  The possibilities offered by the
architecture need to be realized by implementations and practical
deployments.

To give an example of an architectural aspect that potentially has a
sustainability impact, enabling the collection of information (e.g.,
energy consumption) and then using that information to make smarter
decisions is one.  For instance, understanding power consumption of
individual nodes can be valuable input to future purchasing decisions
or development efforts to reduce the power consumption.  Yet, as
data collection is often rather easy, we should not overdo it in such
a way that it leads to accumulation of dark data (i.e. data that is collected and stored, but never used).  All data collection consumes processing power,
network resources and storage space, and this can in turn increase the emissions
from the network.

Other architectural examples include making it possible to scale
resources or resource selection processes performed in a
sustainability-aware fashion. The use of communication primitives that
maximize utility in a given problem (e.g., using multicast) or the use of
technologies that reduce the number or size of messages needed for a
given task (e.g., binary encoding instead of textual) are some further
examples.

Of course, some of these aspects may have a major impact on
sustainability, where others may only have a minor effect.  There are
also tradeoffs, such as side-effects of architectural choices, e.g.,
dynamic scaling of a router network potentially impacting jitter, or
putting cellular base stations to sleep and activating them as capacity needs grow may introduce a delay in matching the needs of the data flows.

The document is intended to help engineering efforts in the IETF,
provide operational guidance in the operator community, as well as to point to potential research directions in the IRTF.

The scope of the document is advice on Internet and protocol
architecture, such as what architecture or capabilities new protocol
designs or features should have, what kind of operational network
architectures should be deployed, and how all of these can be designed
to best address sustainability concerns.
The focus of this document is to provide actionable design advice to protocol designers. This document therefore
addresses one aspect in the architecture question, and does not claim
to cover the topic exhaustively.

This document is also not focused on general issues around environmental sustainability,
except those that pertain to architecture or significant protocol
features.

It is to be noted that networks themselves are a service, a tool, for all the
applications and services on the Internet. Networks connect data,
people and services. The increase in networking and size of the
Internet is driven by these applications and the usage. Therefore the
emissions from networking are tied to the applications and the data
they consume; with less applications or data, the Internet would have less
hardware and less energy usage. The goals of this document are not to
instruct application and service developers to choose what
applications are worthwhile or how much content is sent. There are
many forums and parties whose mission is to help these developers to
implement more sustainable services, such as, the Green Software
Foundation, the Green Web Foundation, Greening of Streaming, to name a
few.

# Potential Architectural Aspects

This section presents architectural and protocol design aspects that can have an impact on the sustainability of networking. For each topic, we provide an overview, the motivation for why it would be important to consider for more sustainable networking, an analysis and recommendations for future networking professionals.

## Measurement

It is essential to understand the current state of affairs before any improvements can be made. 
Thus, some levels of measurements are necessary for starting to improve sustainability.

### Motivation

Without
measurements of any kind, it is impossible to assess if the networks
are functioning correctly. It is impossible to know if the system is
efficient by comparing it against a baseline model. It is also
impossible to check that changes aiming at optimizing something are
indeed valuable.

This is
particularly the case when looking at the systems as a whole in
post-analysis. As discussed earlier, this level of measurements is
useful input for further actions, such as deciding what parts of the
network need to be targeted for further improvement.

But measurements may also be useful for some dynamic situations
where power-saving decisions, for instance, depend on knowing the
relative power consumption of different activities, such as when a
power-off decision involves understanding the relative savings during
the shutdown period vs. the power cost of shutdown and startup procedures,
or the possible need to reconfigure other nodes in the network due
to the shutdown.

At the same time, it is not possible to measure
everything. Furthermore, any measurement must be validated. Relevance
of measurements must be periodically assessed, e.g., with comparisons between measurements within a network and the aggregate numbers from the electricity provider.

Finally, measurements made in the field must be collected and structured to allow
later retrieval. And measurements are counterproductive if they are endlessly
accumulated without being consulted.

### Analysis

#### Measuring impacts of fabrication and usage phases

Network infrastructure generates negative impacts principally during fabrication
and usage phases. Measuring negative impacts related to fabrication falls
in the activity of lifecycle analysis (LCA). LCAs is typically realized
per device, either by the equipment vendor itself, or by third-party analysts. LCA
involves modeling (see Section 2.2 on Modeling section). The analysis
can be done in terms of climate change (CC), but can be extgended to other criteria as
abiotic resource depletion (ARD), ecotoxicity (ET) or water usage (WU).
LCA also involves
information systems keeping an inventory of the devices uses.
For many classes of devices, the embedded carbon aspects or
use of raw materials are significant sustainability issues.
As these measurements
and inventories are external to the network architecture, they are considered out
of this document scope.

Measuring negative impacts related to the usage phase falls in the scope of
monitoring. In this phase, the most obvious sustainability-related measurement is
power monitoring to measure the energy consumption and estimate the related negative
impacts.

#### Measuring efficiency

Power (in Watts, that is, in Joule/s) or energy (in Joules) measurements alone are of meager use if the
cause of the consumption is not measured as well. Any power/energy
measurement should occur alongside other measurements that can be used to
determine energy efficiency. Hence a sound measurement
architecture implies the existence of an energy efficiency
framework of some kind.

In the context of carbon accounting,
emission accountants are generally looking for a metric of the
delivered value per unit of carbon. In networking, the most obvious delivered value
is number of bits sent or received (traffic), or to the communication capacity made
available during unit of time. In both case, the unit is the bit, but the two metrics
have very different meanings. In one case, one spends a Joule to send a bit. In the
other case, one spends a Joule to offer a bandwidth capacity of 1 bit/s during
a second.  The latter is important, as
often communication networks have requirements to be able to send
messages when there's a need for it, e.g., for emergency communications, not
that those messages are always being sent.

The measurement of efficiency is not restricted to energy. Traffic or offered
bandwidth can be related to the carbon emitted by the device traversed by this
traffic. This carbon should include the part associated with electricity, but
also the part associated with fabricating the device (pro rata temporis) {{LCAandUsage}}.
Sustainable efficiency can also be expressed in water used per traffic, for example.

### Recommendation

Ongoing work at the IETF's GREEN working group is already targeted at improving
existing energy consumption metrics and frameworks but some further
considerations may apply.
While the Sustainable Internet Architecture addresses broader lifecycle aspects such as manufacturing, reuse, and recycling—essential to circular economy goals
the GREEN framework provides a foundational model for monitoring and optimizing energy consumption across networked devices and components.
Therefore, extending the measurements defined in the Sustainable Internet Architecture to integrate energy
related data from the GREEN framework, such as power states, consumption patterns, and efficiency ratios will enable a more holistic approach to environmental impact assessment.
Harmonizing these efforts will support the development of composite metrics that connect operational energy use with manufacturing and end-of-life considerations, establishing a coherent basis for sustainable digital infrastructure management.

In order to meet the needs discussed above, the following architectural design principles
are proposed.

#### Future Proof Metrics

We recommend that any measurement framework or sustainability-related
information sharing mechanism be designed to share different types of
information and not limited to a single metric such as power consumption.
Requirements, units, granularity and collection method specifications are
sure to shift over time.

#### Plug-in Architecture for Collection and Control

Since the need to deliver on the use cases described is urgent, the
industry has to accommodate the capabilities (and limitations) of existing
equipment in the field for collecting metrics. 
It is recommended to apply a plug-in architecture with modules that can
work with (read from and control) devices of any kind, including
traditional networking hardware devices, cooling systems, software
stacks, and occasionally static data sheets.

#### Data with Content Declaration

To make sense of the collected data, it must be possible to see exactly
where all data is coming from, what it means, its precision and how it
has been processed.  The metadata itself must also have a formal description.
YANG might be suitable for modeling the metadata schema.  Keep the metadata
attached to the dataflow it describes, so that the relation is clear even when
components are added by other organizations at a later point in time.

#### Processing Flexibility and Audit Trails

The collected data passes through a pipeline from collection to
decisions. By processing we mean steps to reshape the data to
match further aggregation and processing steps, such as unit
conversions, sample frequency alignment, filtering, etc.

Separate these pipeline stages into separate modules and use
configuration to construct the pipeline.  This gives flexibility,
reuse and enables a full audit trail.  It is essential that every
data processing step can be reviewed in an audit situation without
looking at code.

#### Aligned with Reporting Frameworks

Ensure that the system output is aligned with the measurement
requirements set forth by relevant legal frameworks, e.g. ESRS
(Europe), TCFD and IFRS (US, Japan), BRSR (India), etc. The
responsible corporate bodies producing the corporate reports are
unlikely to use any technical collection system that isn't well
aligned.

## Modeling {#modeling}

The paucity of up-to-date information on equipment and system
parameters, especially power consumption and maximum throughput, makes
estimating the power consumption and energy efficiency of these
systems extremely challenging. In addition the rapid evolution of
technology and products in ICT makes the estimation quickly outdated
and possibly inaccurate. In almost all cases physical measurement has
to be replaced by partial measurement and mathematical modeling.

### Motivation

Where power optimization choices are made, accurate information is required to decide the right choice. Modeling instead of measurements may have to be used in some cases.

### Analysis

To date, two approaches to network power modeling are accepted as
providing a realistic estimate of network power consumption. These
approaches are referred to as "bottom-up" and "top-down".  The paper
{{Unifying}} surveys both approaches and provide a new approach which
unifies both of them. The unified approach is used to estimate the
power consumption of access, aggregation and core networks.

The paper {{Modeling}} provides a
model for IP Routers and the routers of other future Internet
architectures (FIA) such as SCION and NEBULA. They use a generic model
which captures the commonalities of IP router as well as the
peculiarities of FIA routers. They conduct a large-scale simulation
based on this router model to estimate the power consumption for
different network architectures.

Since routers and other network devices and functions can be
virtualized, this article (1) provides comprehensive "graphical,
analytical survey of the literature, over the period 2010–2020, on the
measurement of power consumption and relevant power models of virtual
entities as they apply to the telco cloud." This paper A Methodology
and Testbed to Develop an Energy Model for 5G Virtualized RANs IEEE
Conference Publication IEEE Xplore got best paper award for GreenNet
2024, but I am not sure if we are interested to model 5G vRAN.

There is a plethora of publications on modeling communication networks
and DC computing.

#### Customer Attribution

When organizations assess their Scope 3 emissions, they need to sum up
their share of emissions from all their suppliers, one of which for
example, might be a cloud hosting service.  In order for the supplier
to provide an emission share value back to the customer, the provider
needs to develop a mechanism for attribution.

A significant challenge in accurately assessing Scope 3 emissions is
avoiding Double Counting, where the same emission is reported by
multiple entities. According to the GHG Protocol best practices, it is
crucial to establish clear guidelines and agreements between suppliers
and customers to ensure that emissions are attributed correctly and
not counted multiple times. This requires transparent communication
and precise emission reporting standards to ensure that all parties
involved have a consistent understanding of which emissions belong to
which organization.

By addressing the Double Counting issue, companies can achieve more
accurate and reliable Scope 3 emissions assessments, thereby
contributing to better overall sustainability reporting and
improvement efforts.

#### Baselining and Benchmarking

Establishing a baseline is a fundamental step in the process of
improving energy efficiency and sustainability of network
technology. Baselining involves establishing a reference point of
typical energy usage, which is crucial for identifying inefficiencies
and measuring improvements over time. In this step, the controller
uses only the collected data from datasheets and other reliable
sources.

By establishing a baseline and using benchmarking, organizations can
determine if their networking equipment is performing normally or if
it is deviating from expected performance. This is the first step in identifying and guiding necessary
improvements. Benchmarking involves collecting performance
measurements of networking equipment under controlled
conditions. This process helps establish standardized performance
metrics, allowing for comparison against baselines collected during
regular operational conditions.

The initial measurement of networking equipment's energy efficiency
and performance, known as Baselining, should be coordinated with
vendor specifications and industry standards to understand what is
considered normal or optimal performance. For example, if the baseline
indicates that your switches operate at 5 Gbps per watt, while vendor
specifications suggest 8 Gbps per watt and the industry standard is 10
Gbps per watt, actions should be taken to implement energy-saving
measures and upgrades. Continuously tracking subsequent measurements can reveal if
efficiency improves towards the benchmark of 8-10 Gbps per watt.

This practice ensures that any improvements can be quantifiably
tracked over time, providing a clear measure of the effectiveness of
the implemented changes and guiding further enhancements in network
sustainability.

See also {{Baseline}} and {{BenchmarkingFramework}}.

### Recommendation

Even though baselining is essential in identifying potential areas of improvement and tracking progress, it is still to be determined to what extent we need to work on modeling networks and devices in the architecture.

## Dynamic Scaling {#dynscale}

Dynamic scaling is the ability to adjust resources according to demand, and possibly turn some of
them off during periods of low usage. Examples include the set of
servers needed for a service, how many duplicate links are needed to
carry high-volume traffic, whether one needs all base stations with
overlapping coverage areas to be on, etc.

Networks and communications are also critical functions of the modern
digital society. The reliability of individual networking links or
devices cannot always be guaranteed. As a result, various levels and forms of
resiliency are often needed, for instance through redundancy. Yet,
there is a question on how much redundancy is needed and how quickly a
backup or resource increase can be activated due to increased demand.

### Motivation

Outside of implementation improvements, dynamic scaling is potentially the
most promising method for reducing power consumption related
environmental impacts. Scaling can happen on a device-level (increasing performance as traffic levels grow) or a network segment level (increasing the number of active links or cellular base stations).

Considering current fixed networking hardware, dynamic scaling might not have an impact in
situations where there's only a single router or server
serving a particular route, area, or function. Current routers and switches exhibit limited potential dynamic scaling because the focus is on high performance and a stable connectivity. There have been some recent improvements on this front as well. e.g. Energy-Efficient Ethernet (EEE) is a good example of a networking-level specification to lower energy consumption in idle mode. EEE has limited impact on a network that has continuous traffic.

Resiliency can be implemented within a single router as well, e.g. as a backup power supply, between routers and switches as multiple links between the same nodes, having different links between two end points, overlapping cellular coverage, etc. All these necessarily add more hardware to provide the same exact service. Some of that hardware can be fully operational at all times and used to serve the traffic, while other links may be in hot or cold standby depending on the use case.

Cellular networks are typically built with
significant overlap in coverage areas of multiple base stations. Demand and business reasons dictate
the design of the coverage, and regulations might dictate how reliable
the cellular service should be. There is extensive work world-wide to
optimize the operation of this overlapping coverage, e.g. by turning down
some sites at night time when traffic volumes are low. A cellular
basestation site can consume anything from a few kWh to ten or more
kWh per provider. Modern cellular base stations do implement numerous
features to scale the energy consumption. In general, cellular base
stations have a base energy consumption and traffic-dependent
consumption, a somewhat similar behavior to what we can observe in modern CPUs.

On the network level, most large systems have significant amount of redundancy and spare
capacity. Where such capacity can be turned on or off to match the
actual need at a given time, significant reductions in power consumption
can be achieved.

### Analysis

Dynamic scaling could be seen as either an alternative or complementary to load stabilization, e.g., via "peak shaving". Perhaps the most realistic angle is that both are likely needed.

The most rudimentary approach to dynamic scaling is just turning some resources off. However this may not be sufficient, and a more graceful/engineered approach potentially yields better results.

Network architects need to understand the impacts of scaling changes on users and traffic. These may include the fate of ongoing sessions, latency/jitter, packets in flight, or running processes, attempts to contact resources that are no longer present, and the time it takes for the network to converge to its new state.

Dynamic scaling requires an understanding of load levels for the
network, so information collection is required. It also requires
understanding the power, time and other costs of making changes. (See
{{I-D.pignataro-enviro-sustainability-architecture}} for discussion of
tradeoffs and multi-objective optimization.) Understanding the resiliency requirements for a network or a piece
  of equipment is also important for the optimal control of
  resiliency, e.g., as an input to decisions on how many instances of
  replicated services need to be run and where.

Some of the strategies that are useful in implementing a well working dynamic scaling include:

* Matching the currently used resources to the actual need, be it
  about traffic demand or resiliency. One way to do this is to use of
  power-proportional underlying technologies, such as chipsets or
  transmission technologies. And where this is not sufficient, the
  ability to turn components/systems on and off is an alternative
  strategy.

* Using load adaptive techniques allows the capacity of the nodes to
  be dynamically adjusted according to the demand. Examples include
  Adaptive Link Rate (ALR), which dynamically adapts the link rate to
  suit traffic demand or power off links in Link Aggregation based on
  traffic demand which is empirically estimated based on traffic
  arrival. LACP (Link Aggregation Control Protocol) defined in IEEE
  802.1AX {{LinkAggregation}} can be modified to power off links in an
  aggregation if they are not needed.

* Ability to enter "no new work" mode for equipment, to enable some resources to be eventually released/turned off.

* Ability to move ongoing tasks off to other equipment, to prevent disruption of already started tasks.

* Ability to schedule changes in advance rather than making them abruptly, with
  associated signaling exchanges and possible transient routing and
  other failures. See for instance the time-variant routing work in
  the IETF {{RFC9657}} {{I-D.ietf-tvr-requirements}}
  {{I-D.ietf-tvr-schedule-yang}} {{I-D.ietf-tvr-alto-exposure}}.

* Efficient propagation of changes of new routes, new set of servers, etc. as to reduce the amount of time where state is not synchronized across the network. The needs for the propagation solution needs to be driven by dynamic scaling and sustainability as well as other aspects, such as recovery from failures.

* Build mechanisms to deal with dynamic changes: Plan for dynamic set of resources, and not expect to work with a fixed set of resources.

* Dynamic scaling requires automation in most cases, e.g., to turn on
  new service instances. See again {{I-D.pignataro-enviro-sustainability-architecture}} for a discussion of automation.

* Interaction with the energy grid can enable dynamic load
  shifting. For instance, a demand-response technique can be used
  where the system temporarily reduces its energy usage in response to
  pricing signals from a smart grid. The proposed demand-response
  technique involves deferring the load from elastic requests to later
  time periods in order to reduce the server demand and the current
  energy usage, and hence, energy costs {{LoadShifting}}.

* Energy-aware routing. This generally aims at aggregating traffic
  flows over a subset of the network devices and links, allowing other
  links and interconnection devices to be switched off. These
  solutions shall preserve connectivity and QoS, for instance by
  limiting the maximum utilization over any link, or ensuring a
  minimum level of path diversity. There are also algorithms for Green
  Traffic engineering. For instance {{Segment}} employs segment
  routing. Experimental analysis results {{Experiment}} show that the
  resource usage for SRv6 could be more than 70% lower than that of
  the SPF-based forwarding, depending on the network topology.

### Recommendation

The guidelines above need to be considered specifically for each
protocol and system design. Further work in detailing this guidance
would also be useful.

It is likely that there is increased attention to resiliency in the
future, given for instance the increased importance of the tasks
supported by networks or the potentially increasing frequency of
natural disasters as a result of global warming.

## Transport {#transport}

Transport protocols make it possible for
communication flows to adjust themselves to the
dynamic conditions that exist in the network at any given time:
available bandwidth, delays, congestion, the ability of a peer to send
or receive traffic, and so on. Depending on the conditions, an
individual flow may carry traffic at widely different rates, may pause
for some time, etc.

This behavior has an effect on sustainability---e.g., in
what periods the endpoint and network systems are active or when they
could be in reduced activity or sleep states.
Cellular networks and mobile links can scale their energy usage based on load and enter a low-power state when a traffic flow ends. Thus, in theory, the faster the data is transferred, the faster the device transmission/reception functions can enter a low-power state.


### Motivation

Transport behavior would have a possibility of impacting how much
downtime or sleep can be had in the communication system, either on
the end systems or routers or other equipment in between. The savings
can be significant, at least in wireless systems.

Improvements through transport behavior are only useful if the
involved systems have power proportionality.

### Analysis

Various higher-level transport solutions may also
cache or pre-fetch information. For instance, {{I-D.irtf-nmrg-green-ps}} 
lifts CDNs as one example of technology that has reduced energy consumption, by
moving the needed endpoints closer to each other.

On a given set of endpoints, application behavior can impact environmental costs.
For instance, {{I-D.pignataro-enviro-sustainability-consid}} observes the effect of protocol
chattiness. Does the protocol rely on periodic updates or heartbeat messages? Could such message 
patterns result in preventing links or nodes from going to sleep (absent other communications), 
and in such a case, would an alternative pattern be feasible?

Transport layer protocol behaviour also has an impact.
A critical issue is the tradeoff involved in sending traffic. As
argued in {{NotTradeOff}}, reducing
the amount of time the endpoints and the network are active can
sometimes help save energy. As a result, in general, delivering information as rapidly as possible would appear to be desirable.

On the other hand, would such as rapid transmission impact peak
traffic, and as such, contribute to a need to dimension
networks for higher traffic volumes? And in this case the need
could be only a perceived one as a less rapid transmission would
not have impacted, for instance, a user's ability to view a video
if the transmission was merely for the buffering of the rest of
the video.

Furthermore, bandwidth-intensive applications can influence
other applications or users by presenting a significant load on the
network, and consequently reducing capacity available for others, or
increasing buffering (and with it, latency) across the network
path. For an application with intermittent data transfers, such as
streaming video, this would seem to speak in favor of sustained but
lower-rate delivery instead of transmitting short high-rate bursts {{Sammy}}. However, this
is in contradiction with the energy-saving approach above. Thus, the
tradeoff is: should data be sent in a way that is "friendly" to others
(avoiding bad interference), or should it save energy by sending fast,
increasing the chance for equipment to enter a "sleep" state?

At the time of writing, the common choice for video is to opt for higher
rate delivery, potentially saving energy, and possibly at the expense
of other traffic. For non-urgent data transfers, the IETF-recommended
default approach is the opposite: the LEDBAT congestion control
mechanism {{RFC6817}}, which is designed for such use, will always
"step out of the way" of other traffic, giving it a low rate when it
competes with any other traffic. Alternatively, if the goal is to
reduce energy, such traffic could be sent at a high rate, at a
strategically good moment within a longer time interval; this would
give network equipment an opportunity to enter a sleep state in the
remaining time period within the interval.

A hypothesis could be made that transport protocols should
take energy into account in addition to the many other inputs they decide upon. For example, it is possible that a non-urgent data transfer would send as much as possible as soon as possible when
at least one of the links along the path is known to be power proportional (e.g., a cellular link), while tracking buffer
growth from transmission delays to scale back if delay should occur. 

Such ideas remain to be confirmed with experiments, however.

Similarly, caching and pre-fetching designs need to take into account
not only the likelihood of having acquired the right content in memory,
but also the sustainability cost of possibly fetching too much or the
timing of those fetching operations.

In general, information about the impacts of loading or not loading
the network with additional traffic, and whether a certain sending
pattern enables power savings through sleep modes, would be beneficial
for the communicating endpoints. Mechanisms for making such
information available to the endpoints would be useful.

### Recommendation

As can be seen from the above, there are a number complex tradeoffs merely for transport
protocol behavior on a given connection.

This prompts us to give two types of advice. The first type of advice is for protocol designers: 
simple models are unlikely to guarantee optimal results, but as long as 
normal precautions such as congestion control, monitoring queue build-up, and avoiding
unnecessary messages are employed, systems will operate reasonably well. 

The second type of advice is for further work in the research community to better understand
what strategies would actually provide the best end-user and energy performance, and whether the choice of strategy
depends on other factors, such as whether sleep modes are implemented in network nodes.
There is a clear need for
simulations and experiments to understand this better. This may be work
that fits within the IRTF SUSTAIN research group.

## Equipment Longevity {#longevity}

This section discusses the ability to extend the useful life of protocols and/or network equipment in order to amortize the embedded energy costs over a longer period, even though it may mean that the protocols/equipment may not be fully optimized for the present use. This includes devising tools to inform network administrators and their users of the potential benefits of network equipment upgrades, so that they can make better choices on what upgrades are necessary and when.

It should be noted that from an environmental sustainability perspective, it may not always be the best choice to upgrade network equipment whenever slightly less power-hungry and "greener" alternatives become available. The environmental cost of amortizing the carbon embedded inside equipment over its lifetime, including the carbon associated with the manufacturing of the equipment that is to be replaced, should be taken into consideration as well.

### Motivation

Embedded carbon and raw materials can be a significant part of the
overall environmental impact of systems. If this can be improved for
devices that are manufactured in large quantities, the improvements
can be significant.

The more the world moves toward low-carbon energy sources, the more the manufacturing matters in the holistic view. Today there can be an order of magnitude difference in average emissions for a kWh of electricity between two countries. Thus, any estimates that seek to compare the manufacturing and use phase emissions of a network equipment would have to be calculated per country or region, and there is no universal standard for the whole planet.

Long equipment lifetimes are only useful if the longer lifetimes can
be achieved without compromising other aspects of sustainability, such
as when using a high-end and power-hungry router in place of small
routers. The exact moment when a hardware change is warranted for sustainability differs between countries and regions.

### Analysis

When we engineer protocols and network equipment, we are inclined to
design them in a highly optimized manner for a very specific set of
requirements, use cases and context. While this is necessary in
certain cases (e.g. constrained nodes with limits on processing
capacity or long lived battery powered devices), there are certainly
cases where such optimized equipment is not absolutely required. Most infrastucture network nodes on the Internet utilize
only a fraction of their design capacity most of the time.

Designing the equipment with an eye on longevity comes with a set of
advantages:

* It allows the same equipment and protocols be reused in a different context in the future. e.g. A core router of today can become an edge router in a near future and an access router in the further future if the protocol implementations are adaptable.

* It can reduce complexity in implementations as well as in network management that are usually indicated in highly optimized systems

* It can let network equipment operate for a longer period and can reduce the frequency of hardware upgrades, in turn reducing the environmental impact associated with manufacturing, transporting, and disposing of the old/new hardware.

* One key disadvantage may be that not optimizing may result in the need for premature upgrades for capacity and this needs to be considered.

Hence, it is very likely that extending the life of protocols and equipment with higher flexibility could provide a better environmental benefit than tightly optimizing only for today’s uses.

Another aspect that can play an important role in extending the longevity of equipment concerns software-defined networking, in the sense of designing networking equipment in such a way that new equipment capabilities and features can be introduced via software upgrades as opposed to requiring hardware replacement. This requires system architectures that incorporate the necessary infrastructure to support such upgrades in a secure manner that does not compromise equipment integrity.

On the other hand, it is very much possible that there could be new equipment available that is significantly more sustainable in its operation. The longevity of the existing equipment and the amortization of its embedded sustainability costs, needs to be balanced against the potential operational savings to be realized by upgrading to newer equipment over the intended lifecycle of the newer equipment.

### Recommendation

The guidelines above should be considered for any new system design. If some aspect of protocol or network equipment design choice could be made more generic and flexible without a significant performance and sustainability impact, it needs to be studied in further detail. Specifically, the potential additional sustainability costs due to forgoing optimization need to be weighed against the potential savings in embedded carbon and raw material costs brought about by premature upgrades. There are also cases where equipment upgrades are done to provide better peak performance characteristics (e.g. higher advertised speeds towards consumers) and these need to be viewed as well with the same tradeoffs in mind. Also, when newer more sustainable equipment is available there needs to be a cost benefit analysis made to decide whether to keep current equipment running for longer or upgrade to realize the benefits of newer equipment even though it incurs new embedded costs. Finally, when designing networks it is recommended to consider whether it is possible to reuse retiring equipment in a different location or for a different function (e.g. move it to lower traffic geographies, core routers become edge/access routers etc.)

## Encoding {#encoding}

This is about considering the effects encoding methods on sustainability, such as the use of binary encodings instead of text.

### Motivation

Better encoding can obviously reduce the length of messages sent, or
reduce the amount of computing required for the encoding and decoding operations. It
remains a question mark how big overall impact this is, however. It
should only be performed if it gives a measurable overall impact.

### Analysis

Better encoding methods are clearly beneficial for improving the detailed-level effectiveness
of communications.

The main questions are, however:

* Is the effect of this is at a magnitude comparable to the other
things, or if it is just absolutely tiny? Particularly considering
that much of the traffic on the Internet is video, and much of that is
other content than, e.g., HTTP headers. Moran et al. argued in their 2022 paper {{CBORGreener}} {{RFC9547}} that that for a weather data example from {{RFC8428}} {{RFC9193}} there are significant savings. However, this needs more research in terms of the overall impact across different examples and the general make up of Internet traffic.

* At what layer is the compactness achieved? Are link, IP, or
  transport layer mechanisms that can compact some of the verbose
  messaging useful, or should each protocol have optimal
  compacting?

* Tradeoffs related to compute required to do encoding and decoding operations. These can be relatively heave operations, particularly if compressiomn is performed, particularly if AI-based
  computationally expensive methods are used.

### Recommendation

More research is needed to quantify the likely sources of measurable
impacts.

Of course, new protocols can generally be designed to work with
compact encoding, unless there is a significant reason not to. But
efforts to modify existing protocols for the sake of encoding
efficiency should be further investigated by the above mentioned quantification results.

One particular area of interest is the impact of AI-based compression methods and their computational and energy costs vs. the achieved savings in communication efficiencies.

## Sustainable by Design: Data Governance Perspective {#bydesign}

Incorporating sustainability into the design phase of network
architecture is critical for ensuring long-term environmental and
operational benefits. From a Data Governance point of view,
"Sustainable by Design" involves embedding sustainability principles
and practices into the data management frameworks and processes from
the outset.

### Motivation

Data governance plays a pivotal role in shaping how data is collected,
stored, processed, and used. By integrating sustainability into these
processes, organizations can ensure that their data practices
contribute to environmental goals, such as reducing carbon footprints,
optimizing resource usage, and minimizing waste.

### Analysis

Key elements of Sustainable by Design in data governance include:

* Data Minimization: Collecting only the data that is necessary and
  useful, reducing storage and processing requirements, which in turn
  lowers energy consumption.

* Efficient Data Storage Solutions: Implementing energy-efficient data
  storage technologies and practices that prioritize reduced power
  usage and cooling needs.

* Lifecycle Management: Ensuring that data is managed throughout its
  lifecycle in a way that minimizes environmental impact, including
  secure and sustainable data disposal practices.

* Transparency and Accountability: Establishing clear data governance
  policies that promote transparency in data usage and accountability
  for sustainability objectives.

### Recommendation

Organizations should adopt data governance frameworks that incorporate
sustainability as a core principle. This includes setting clear
sustainability goals, measuring progress towards these goals, and
continuously improving data management practices to enhance
sustainability. By doing so, organizations can ensure that their data
operations are not only effective but also environmentally
responsible.

# Recommendations for Further Work and Research

Dynamic scaling, i.e., the ability to respond to demand variations and
resiliency requirements while optimizing energy consumption clearly
has significant potential for savings. Past and ongoing work in
various systems and protocols has looked at this, of course, but we
believe work also remains. Any large scale system likely benefits from
further analysis, unless already ongoing. Guidance in {dynscale}
simple, and further work in detailing this guidance would also be useful.

Transport-related optimizations (see {transport}) that enable devices to consume less
power by sleeping more appear to have potential for significant
savings, but confirming this requires further research. Such research
could be performed in the context of the recently chartered SUSTAIN
research group.

More research is needed to quantify the likely sources of measurable
impacts when it comes to efficient protocol message encoding discussed
in {encoding}. Again, this is work that the research group could take
on.

TBD

...

# Security Considerations

It is possible that the introduction of features and architectural properties to facilitate environmentally sustainable Internet technology introduces new attack vectors or other security ramifications.

For example, the introduction of measurements and metrics for the purpose of saving energy could be misused for the opposite effect when compromised.  For example, measurements might be tampered with in order to cause an operator to waste energy.  Energy measurements, when abused, might also result in compromised security, for example by allowing to infer usage profiles.  They could also be abused to implement a covert communications channel in which information is leaked via tampered measurement values that are being reported.

Networking features and technology choices may have security implications regardless of why they are introduced, including for reasons of environmental sustainability.  The possibility of this needs to be taken into consideration, understood, and communicated to allow for their mitigation.

# IANA Considerations

This document has no IANA actions.


--- back

# Acknowledgments
{:numbered="false"}

Everyone on the author section has contributed to the document in significant ways. The author list has been ordered in (reverse) alphabethical order.

Parts of this document extensively leverage ideas and text from
{{I-D.cparsk-eimpact-sustainability-considerations}} and
{{I-D.pignataro-enviro-sustainability-architecture}} and associated discussions in the IETF, IRTF, and IAB groups. We acknowledge and appreciate the many contributors whose work has enhanced its
development.
