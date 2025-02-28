---
title: "Architectural Considerations for Sustainable Internet Technology"
abbrev: "Sustainable Internet Architecture"
category: info

docname: draft-eimpact-arch-considerations-latest
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
    fullname: Jari Arkko (Ed.)
    organization: Ericsson
    email: jari.arkko@gmail.com

 -
    fullname: Suresh Krishnan (Ed.)
    organization: Cisco
    email: sureshk@cisco.com

 -
    fullname: Michael Welzl
    organization: University of Oslo
    email: michawe@ifi.uio.no

 -
    fullname: Alexander Clemm
    email: alex@clemm.org

 -
    fullname: Ali Rezaki
    organization: Nokia
    email: ali.rezaki@nokia.com

 -
    fullname: Eve Schooler
    email: eve.schooler@gmail.com

 -
    fullname: Sebastien Rumley
    organization: HEFR
    email: sebastien.rumley@hefr.ch

 -
    fullname: Hesham ElBakoury
    email: helbakoury@gmail.com

 -
    fullname: Emile Stephan
    organization: Orange
    email: emile.stephan@orange.com

 -
    fullname: Marisol Palmero
    organization: Cisco
    email: mpalmero@cisco.com

 -
    fullname: Ari Keränen
    organization: Ericsson
    email: ari.keranen@ericsson.com

 -
    fullname: Luis M. Contreras
    organization: Telefonica
    email: contreras.ietf@gmail.com

 -
    fullname: Jan Lindblad
    organization: All For Eco
    email: jan.lindblad+ietf@for.eco

normative:

informative:
  RFC6817:
  RFC9657:
  I-D.ietf-tvr-requirements:
  I-D.ietf-tvr-schedule-yang:
  I-D.ietf-tvr-alto-exposure:
  I-D.pignataro-enviro-sustainability-architecture:
  NotTradeOff:
    title: "Not a Trade-Off: On the Wi-Fi Energy Efficiency of Effective Internet Congestion Control"
    date: 2022
    author:
     - ins: M. Welzl
    seriesinfo: "17th Wireless On-Demand Network Systems and Services Conference (WONS), Oppdal, Norway, pp. 1-4, doi: 10.23919/WONS54113.2022.9764413"
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
  Modelling:
    title: "Modeling Data-Plane Power Consumption of Future Internet Architectures"
    date: 2016
    author:
      - ins: C. Chen
      - ins: D. Barrera
      - ins: A. Perrig
    seriesinfo: "IEEE 2nd International Conference on Collaboration and Internet Computing (CIC), Pittsburgh, PA, USA, pp. 149-158, doi: 10.1109/CIC.2016.031"

--- abstract

This document discusses protocol and network architecture aspects that
may have an impact on the sustainability of network technology.

--- middle

# Introduction

Sustainability is an important consideration in networking. Both for
ensuring that networking technology can enable societies to operate in
a sustainable manner and that the networks themselves are sustainable.

This document discusses protocol and network architecture aspects that
may have an impact on the sustainability of network technology.

Where good design and architecture can improve the sustainability of
networks, we should of course apply them when designing new protocols
and building networks.

But what is such good design and architecture? Are there guidelines
that can be given? Intuitively, protocol and network architecture may
in some cases have an impact on sustainability. At the very least the
right design and architecture can make it possible to have a positive
impact, but of course the architecture alone is not enough. The
possibilities offered by the architecture need to be employed by
implementations and practical deployments.

To give an example of architectural aspect that potentially has a
sustainability impact, enabling the collection of information (e.g.,
energy consumption) and then using that information to make
smarter decisions is one. For instance, understanding power
consumption of individual nodes can be valuable input to future purchasing
decisions or development efforts to improve the power consumption.

Other architectural examples include making it possible to scale
resources or resource selection processes performed in a
sustainability-aware fashion. The use of communication primitives that
maximise utility in a given problem (e.g., using multicast) or the use
technologies that reduce the number or size of messages needed for a
given task (e.g., binary encoding instead of textual) are some further
examples.

Of course, some of these aspects may have a major impact on
sustainability, where others may only have a minor effect.  There are
also tradeoffs, such as side-effects of architectural choices, e.g.,
dynamic scaling of a router network potentially impacting jitter.

This document discusses some of these architectural aspects and
considerations related to them, and tries to give guidance where such
guidance can be given.

The scope of the document is advice on Internet and protocol
architecture, such as what architecture or capabilities new protocol
designs or features should have, what kind of operational network
architectures should be deployed, and how all of these can be designed
to best address sustainability concerns.

The document is intended to help engineering efforts in the IETF,
provide guidance for operationals in the operator community, or point
to research directions in the IRTF.

This document is not focused on general issues around sustainability,
except those that pertain to architecture or significant protocol
features.

# Potential Architectural Aspects

## Measurement

You have to know what is going on before you can improve. Some level
of measurements are necessary for improving sustainability. This is
particularly the case when looking at the systems as a whole in
post-analysis. As discussed earlier, this level of measurements is
useful input for further actions, such as deciding what parts of the
network need further improvement.

But measurements may also be useful for some dynamic situations
where power-saving decisions for instance depend on knowing the
relative power consumption of different activities, such as when a
power-off decision involves understanding the relative savings during
the shutdown period vs. the power cost of shutdown and startup procedures,
or possible need to reconfigure other other nodes in the network due
to the shutdown.

### Motivation

Measurements are a necessary mechanism for both post-analysis and
potentially some of the dynamic decisions taken by systems. Without
measurements, only aggregate power consumption can be measured, but
for instance no per-device data about real power usage will be
available, and as such, there's limited basis for deciding what
improvements are most useful.

### Analysis

While the simplest forms of sustainability-related measurements are
about power, there's clearly room for other measurements and other
information as well. To begin with, power consumption by itself may not be what
matters most for sustainability, as the source of the power may be
more significant in terms of the actual carbon footprint.

Secondly, for many classes of devices the embedded carbon aspects or
use of raw materials may be a significant sustainability issue. See
also Section 2.2.

But when it comes to energy consumption,
operators know their total energy consumption already (see the
utility bill), and it's not particularly hard to measure the energy
consumption of individial network devices either.  Still, there are a
number of desirable use cases where the measurement situation needs to
improve.

#### Measuring Power Efficiency

When assessing the power consumption (Scope 2) of an IT-organization,
emission accountants are generally looking for a metric of the
delivered value per unit of energy.

A commonly used method is to equate the delivered value with the number
of bits sent or received.  But applying this to a video conferencing
operation, for example, would mean that if a 10% improvement of the
compression algorithm is introduced at unchanged power usage, the
operation would suddenly seem to be 10% less efficient.

There are many more strange effects like the one above with this
approach.  The value definition needs to be more stable than depending
on the number of transmitted bits.

#### Customer Attribution

When organizations assess their Scope 3 emissions, they need to sum up
their share of emissions from all their suppliers, one of which for
example, might be a cloud hosting service.  In order for the supplier
to provide an emission share value back to the customer, the provider
needs to develop an attribution formula.

#### Continuous Improvement

In order for an organization to continuously keep pushing for a more
power efficient operation, knowing the power consumption totals,
possibly divided up by customer, is typically not enough.

In order to get information that is actionable, a more granular data
collection is required.  How much power goes to compute, network,
security, monitoring and management?  Is our cooling as efficient as
the industry standard?

#### Development of Science

Scientists working on power efficiency need real world data to work
with.  Data collection for such purposes might not need to be always
on, but needs to have a clear content declaration, transparent
provenance and computation methods that allow comparisons.

### Recommendation

Ongoing work at the IETF's GREEN working group is already improving
existing energy consumption metrics and frameworks.  Some further
considerations apply, however. In order to meet the needs of the use
cases discussed above, the following architectural design principles
are proposed.

#### Generality

We recommend that any measurement framework or sustainability-related
information sharing mechanism be designed to share different types of
information, and not limited to a single metric such as power consumption.

#### Collect Metrics from Existing Equipment

Since the need to deliver on the use cases described is urgent, the
industry has to accept working with the capabilities of existing
equipment in the field for collecting metrics. 
It's recommended to have a plug-in architecture with modules that can
work with (read from and control) devices of any kind, including
traditional networking hardware devices, cooling systems, software
stacks, and occasionally static datasheets.

#### Content Declaration for all Collected Metrics

A warehouse filled with data collected from diverse sources is useless
without proper labling.  Create metadata that describes the
collected data.  What are the source(s)?  What measurement units?
Precision?  What is included/excluded in these numbers?

The metadata itself must also have a formal description.  Use YANG for
the metadata schema.  Keep the metadata attached to the dataflow it
describes, so that the relation is clear to each component that has
anything to do with it, including components added by other
organizations at a later point in time.

#### Collection, Aggregation, Processing, Display, Decisions

The collected data passes through a pipeline from collection to
decisions. By processing we mean steps to reshape the data to
match further aggregation and processing steps, such as unit
conversions, sample frequency alignment, filtering, etc.

Separate these architectural roles into separate modules in
order to enable reuse, modular development and a transparent,
configurable pipeline.

#### Configurable Pipeline for Reuse and Transparency

Let the pipeline connections between the components be driven by
configuration rather than hard coded.  This enables reconfiguration of
the processing pipeline over time, and perhaps more importantly,
transparency into what stages the data pass through, even without
access to or understanding of the source code of the entire system.

#### Design Together with the Users

Every system should be designed involving some of its target users.
In order for delivered metrics to be of any value, the target audience
needs to be aware of their existence, be able to interpret them and
understand how they can be used in their professional context.

There are many target user groups for the information produced.
Some examples are scientists, operations teams and IT-development
organizations.  One crtitical group that is often overlooked is
the sustainability assessment experts.  If they are not aware, don't
understand or don't care about the produced sustainability metrics,
the value of this work would be greatly diminished.

## Modelling

The paucity of up-to-date information on equipment and system
parameters, especially power consumption and maximum throughput, makes
estimating the power consumption and energy efficiency of these
systems extremely challenging. In addition the rapid evolution of
technology and products in ICT makes the estimation quickly out-dated
and possibly inaccurate. In almost all cases physical measurement has
to be replaced by partial measurement and mathematical modelling.

### Motivation

Where power optimization choices are made, accurate information is required to decide the right choice. Modelling instead of measurements may have to be used in some cases.

### Analysis

To date, two approaches to network power modelling are accepted as
providing a realistic estimate of network power consumption. These
approaches are referred to as "bottom-up" and "top-down".  The paper
{{Unifying}} surveys both approaches and provide a new approach which
unifies both of them. The unified approach is used to estimate the
power consumption of access, aggregation and core networks.

The paper {{Modelling}} provides a
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

There are plethora of publications on modeling communication networks
and DC computing.

### Recommendation

It is still to be determined to what extent we need to work on
modeling networks and devices in the architecture. Is this outside the
scope of architecture?

## Dynamic Scaling

The ability to adjust resources to need, and possibly turn some of
them off during periods of low usage. Examples include the set of
servers needed for a service, how many duplicate links are needed to
carry high-volume traffic, whether one needs all base stations with
overlapping coverage areas to be on, etc.

### Motivation

Outside implementation improvements, dynamic scaling is perhaps the
method with most promise for reducing power consumption related
environmental impacts. Dynamic scaling would not have an impact in
situations where there's only a single router, base station, or server
serving a particular route, area, or function. However, most large
systems have significant amount of redundancy and spare
capacity. Where such capacity can be turned on or off to match the
actual need at a given time, significant power consumption reductions
can be achieved.

### Analysis

Dynamic scaling could be seen as either an alternative or complementary to load stabilization, e.g., via "peak shaving". Perhaps the most realistic angle is that both are likely needed.

The most rudimentary approach to dynamic scaling is just turning some resources off. However, often this is not sufficient and a more graceful/engineered approach potentially yields better results.

A network architects need to understand the impacts of scaling changes on users and traffic. These may include fate of ongoing sessions, latency/jitter, packets in flight, or running processes, attempts to contact resources that are no longer present, and the time it takes for the network to converge to its new state.

Dynamic scaling requires an understanding of load levels for the network, so information collection is required. It also requires understanding the power, time and other costs of making changes. (See {{I-D.pignataro-enviro-sustainability-architecture}} for discussion of tradeoffs and multi-objective optimization.)

Some of the strategies that are useful in implementing a well working dynamic scaling include:

* Ability to enter "no new work" mode for equipment, to enable some resources to be eventually released/turned off.

* Ability to move ongoing tasks off to other equipment, to prevent disruption of already started tasks.

* Ability to schedule changes rather than making them abruptly, with associated signaling exchanges and possible transient routing and other failures. See for instance the time-variant routing work in the IETF {{RFC9657}}{{I-D.ietf-tvr-requirements}}{{I-D.ietf-tvr-schedule-yang}}{{I-D.ietf-tvr-alto-exposure}}.

* Efficient propagation of changes of new routes, new set of servers, etc. as to reduce the amount of time where state across the network is not synchronized. The needs for the propagation solution needs to be driven by dynamic scaling and sustainability as well as other aspects, such as recovery from failures.

* Never expect a fixed set of resources, plan for dynamic set of resources, and build mechanisms to deal with dynamic changes.

* Dynamic scaling requires automation in most cases. See again {{I-D.pignataro-enviro-sustainability-architecture}} for a discussion of automation.

From Hesham:

Energy-aware routing generally aims at aggregating traffic flows over a subset of the network devices and links, allowing other links and interconnection devices to be switched off. These solutions shall preserve connectivity and QoS, for instance by limiting the maximum utilization over any link, or ensuring a minimum level of path diversity. The following 2 slides provides classifications of energy aware routing algorithms.

There are also algorithms for Green Traffic engineering. Here is an example which uses segment routing Exploiting Segment Routing and SDN Features for Green Traffic Engineering IEEE Conference Publication IEEE Xplore. The empirical analysis of this algorithm is described in Green Network Traffic Engineering Using Segment Routing: an Experiment Report IEEE Conference Publication IEEE Xplore. The results of this analysis showed that the resource usage for SRv6 could be more than 70% lower than that of the SPF-based forwarding, depending on the network topology.

Using load adaptive technique allows the capacity of the nodes to be dynamically adjusted according to the demand. Examples include:Adaptive Link Rate (ALR): Adapt Link Rate to suit traffic demand and Dynamically or power off links in Link Aggregation based on traffic demand which is empirically estimated based on traffic arrival. LACP (Link Aggregation Control Protocol) defined in IEEE 802.1AX can be modified to power off links in an aggregation if they are not needed.

We can use dynamic load shifting such as a demand-response technique where the system temporarily reduces its energy usage in response to pricing signals from a smart grid. The proposed demand-response technique involves deferring the load from elastic requests to later time periods in order to reduce the server demand and the current energy usage, and hence, energy costs (comsnets14-Vmathew.pdf)

### Recommendation

The guidelines above need to be considered specifically for each protocol and system design.

TBD implementation and deployment guidance

## Transport

Transport protocols are the flexible tools that make it possible for
communication flows between parties to adjust themselves to the
dynamic conditions that exist in the network at any given time:
available bandwidth, delays, congestion, the ability of a peer to send
or receive traffic, and so on. Depending on the conditions, an
individual flow may carry traffic at widely different rates, may pause
for some time, etc. Various higher-level transport solutions may also
cache or pre-fetch information.

This behavior will have an effect on sustainability as well, e.g., in
what periods the endpoint and network systems are active or when they
could be in reduced activity or sleep states.

### Motivation

Transport behaviour would have a possibility of impacting how much
downtime or sleep can be had in the communication system, either on
the end systems or routers or other equipment in between. The savings
can be significant, at least in wireless systems.

Improvements through transport behaviour are only useful if the
involved systems have power proportionality.

### Analysis

A critical issue is the tradeoff involved in sending traffic. As
argued in {{NotTradeOff}}, reducing
the amount of time the endpoints and the network are active can
sometimes help save energy, e.g. in case the receiver is connected
over a WiFi link. Similar logic applies for any technology that has a
certain degree of energy proportionality, e.g. cellular
communication. As a result, in general, delivering information as
rapidly as possible would appear to be desirable.

On the other hand, bandwidth-intensive applications can influence
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

At the time of writing, the common choice for video is to opt for high
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

Perhaps the issue is that the transport behavior (as with many other
things) needs to take into account multiple parameters. For example,
it is possible that a balanced transport algorithm would be able to
send as much as possible as soon as possible, while tracking buffer
growth from transmission delays and scaling back if there's any buffer
growth. This remains to be confirmed with experiments, however.

Similarly, caching and pre-fetching designs need to take into account
not only the likehood of having acquired the right content in memory,
but also the sustainability cost of possibly fetching too much or the
timing of those fetching operations.

In general, information about the impacts of loading or not loading
the network with additional traffic, and whether a certain sending
pattern enables power savings through sleep modes, would be beneficial
for the communicating endpoints. Mechanisms for making such
information available to the endpoints would be useful.

(TBD add something about LEDBAT per Emile's comment)

### Recommendation

What is said here is, however, just a theoretical analysis. We
recommend simulation and experiments to confirm what strategies would
provide the best end-user and energy performance. Perhaps work for the
IRTF SUSTAIN RG.

TBD implementation and deployment guidance

## Equipment Longevity

The ability to extend the useful life of protocols and/or network equipment in order to amortize the embedded energy costs over a longer period, even though it may mean that the protocols/equipment may not be fully optimized for the present use. This includes devising tools to inform network administrators and their users of the potential benefits of network equipment upgrades, so that they can make better choices on what upgrades are necessary and when.  

It should be noted that from an environmental sustainability perspective, it is not necessarily always the best choice to upgrade network equipment whenever slightly less power-hungry and "greener" alternatives become availabe. The environmental cost of amortizing the carbon embedded inside equipment over its lifetime, for example, the carbon associated with the manufacturing of the equipment that is to be replaced, should be taken into consideration as well.  

### Motivation

Embedded carbon and raw materials can be a significant part of the
overall environmental impact of systems. If this can be improved for
devices that are manufactured in large quantities, the improvements
can be significant.

Long equipment lifetimes are only useful if the longer lifetimes can
be achieved without compromising other aspects of sustainability, such
as when using a high-end and power-hungry router in place of small
routers.

### Analysis

When we engineer protocols and network equipment, we are inclined to
design them in a highly optimized manner for a very specific set of
requirements, use cases and context. While this is necessary in
certain cases (e.g. constrained nodes with limits on processing
capacity or long lived battery powered devices), there are cetainly
cases where such optimized equipment is not absolutely required. The
vast majority of infrastucture network nodes on the Internet utilize
only a faction of their design capacity most of the time.

Designing the equipment with an eye on longevity comes with a set of
advantages:

* It allows the same equipment and protocols could be reused in a different context in the future. e.g. A core router of today can become an edge router in a near future and an access router in the further future if the protocol implementations are adaptable.

* It can reduce complexity in implementations as well as in network management that are usually indicated in highly optimized systems

* It can let network equipment operate for a longer period and can reduce the frequency of hardware upgrades, in turn reducing the environmental impact associated with manufacturing, transporting, and disposing of the old/new hardware.

* One key disadvantage may be that not optimizing may result in the need for premature upgrades for capacity and this needs to be taken into account.

Hence, it is very likely that extending the life of protocols and equipment with higher flexibility could provide a better environmental benefit than tightly optimizing only for today’s uses.

Another aspect that can play an important role in extending the longevity of equipment concerns software-defined networking, in the sense of designing networking equipment in such a way that new equipment capabilities and features can be introduced via software upgrades as opposed to requiring hardware replacement. This requires system architectures that incorporate the necessary infrastructure to support such upgrades in a secure manner that does not compromise equipment integrity.  

### Recommendation

The guidelines above should be considered for any new system design. If some aspect of protocol or network equipment design choice could be made more generic and flexible without a significant performance and sustainability impact, it needs to be studied in further detail. Specifically, the potential additional sustainability costs due to forgoing optimization need to be weighed against the potential savings in embedded carbon and raw material costs brought about by premature upgrades. There are also cases where equipment upgrades are done to provide better peak performance characteristics (e.g. higher advertised speeds towards consumers) and these need to be viewed as well with the same tradeoffs in mind. Finally, when designing networks it is recommended to consider whether it is possible to reuse retiring equipment in a different location or for a different function (e.g. move it to lower traffic geographies, core routers become edge/access routers etc.)

## Compact encoding

This is about better encoding methods, such as using binary instead of text.

### Motivation

Better encoding can obviously reduce the length of message sents. It
remains a question mark how big overall impact this is, however. It
should only be performed if it gives a measurable overall impact.

### Analysis

Better encoding methods are clearly benefical for improving the detailed-level effectiveness
of communications.

The main questions are, however:

* Is the effect of this is at a magnitude comparable to the other
things, or if it is just absolutely tiny? Particularly considering
that much of the traffic on the Internet is video, and much of that is
other content than, e.g., HTTP headers. This needs more research.

* At what layer is the compactness achieved? Are link, IP, or
  transport layer mechanisms that can compact some of the verbose
  messaging useful, or should each and every protocol have optimal
  compacting?

* Tradeoffs related to compressing (particularly if AI-based
  computationally expensive methods are used).

### Recommendation

More research is needed to quantify the likely sources of measurable impacts.

TBD implementation and deployment guidance

## Measurement Architecture

Is measurement architectures in scope of this activity or left for the GREEN WG?

## ...

Add other considerations as needed: Transparency etc.

## Resiliency

This is about weight that migh impact future archs as they did not exist, aka where implicit, in the pass.

### Motivation

It is not so easy to focus on impacts of this or that on architectural evolution because it is difficult to focus on architecture by itself.
But we can ask ourselves what will impact the future architecture that didn't exist explicitly in the pass.

### Analysis

Resiliency might impact much more the adaptation and the design of the architecture in the future decades than it did in the past 20 years.

It might be divided in axis like 'Resiliency to power breakage', 'Resiliency to lack of material' that can be filtered wrt their impacts on device, network ... architectures


### Recommendation

TBD

# Recommendations for Further Work and Research

Transport-related optimizations that enable devices to consume less
power by sleeping more appear potential, but require further research,
perhaps as part of the efforts in the SUSTAIN RG.

TBD

...

# Security Considerations

It is possible that the introduction of features and architectural properties to facilitate environmentally sustainable Internet technology introduces new attack vectors or other security ramifications. 

For example, the introduction of measurements and metrics for the purpose of saving energy could be misused for the opposite effect when compromised.  For example, measurements might be be tampered with in order to cause an operator to waste energy.  Energy measurements, when abused, might also result in compromised security, for example by allowing to infer usage profiles.  They could also be abused to implement a covert communications channel in which information is leaked via tampered measurement values that are being reported.  

Networking features and technology choices may have security implications regardless of why they are introduced, including for reasons of environmental sustainability.  The possibility of this needs to be taken into consideration, understood, and communicated to allow for their mitigation.  

# IANA Considerations

This document has no IANA actions.


--- back

# Acknowledgments
{:numbered="false"}

TODO acknowledge.
