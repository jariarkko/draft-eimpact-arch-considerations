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
    fullname: Jari Arkko
    organization: Ericsson
    email: jari.arkko@gmail.com

 -
    fullname: Suresh Krishnan
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
    email: jan.lindblad+ietf@for.eco

 -
    fullname: +OtherPeople
    organization: ...

normative:

informative:


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
energy consumption data) and then using that information to make
smarter decisions is one. Other examples include making it possible to
scale resources or
resource selection processes performed in a
sustainability-aware fashion. The use of communication primitives that maximise
utility in a given problem (e.g., using multicast) or the use
technologies that reduce the number or size of messages needed for a
given task (e.g., binary encoding instead of textual) are some further examples.

But there are likely also often tradeoffs, such as side-effects of
architectural choices, e.g., dynamic scaling of a router network
potentially impacting jitter.

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
particularly the case when looking at the systems as a whole and in
post-analysis.

But it may also be true for some dynamic situations
where power-saving decisions for instance depend on knowing the
relative power consumption of different activities, such as when a
power-off decision involves understanding the cost of shutdown and
startup procedures and other reconfiguration elsewhere in the network.

### Motivation

Measurements are a necessary mechanism for both post-analysis and
potentially some of the dynamic decisions taken by systems. Without
measurements, only aggregate power consumption can be measured, but
for instance no per-device data about real power usage will be
available, and as such, there's limited basis for deciding on
improvements.

### Analysis

(TBD add something about integrating lifecycle, datasheet
etc. information and how they are shared)

### Recommendation

TBD

## Modelling

### Definition

The paucity of up-to-date information on equipment and system parameters, especially power consumption and maximum throughput, makes estimating the power consumption and energy efficiency of these systems extremely challenging. In addition the rapid evolution of technology and products in ICT makes the estimation quickly out-dated and possibly inaccurate. In almost all cases physical measurement has to be replaced by partial measurement and mathematical modelling.

### Motivation

Where power optimization choices are made, accurate information is required to decide the right choice. Modelling instead of measurements may have to be used in some cases.

### Analysis

To date, two approaches to network power modelling are accepted as providing a realistic estimate of network power consumption. These approaches are referred to as “bottom-up” and “top-down”.  I think the bottom-up approach is what is used by Malmodin and Talia. This paper [Unifying Top-Down and Bottom-Up Approaches to Evaluate Network Energy Consumption | IEEE Journals & Magazine | IEEE Xplore] surveys both approaches and provide a new approach which unifies both of them. The unified approach is used to estimate the power consumption of access, aggregation and core networks. 

This paper [Modeling Data-Plane Power Consumption of Future Internet Architectures | IEEE Conference Publication | IEEE Xplore] provides a model for IP Routers and the routers of other future Internet architectures (FIA) such as SCION and NEBULA. They use a generic model which captures the commonalities of IP router as well as the peculiarities of FIA routers. They conduct a large-scale simulation based on this router model to estimate the power consumption for different network architectures.

Since routers and other network devices and functions can be virtualized, this article [1] provides  comprehensive "graphical, analytical survey of the literature, over the period 2010–2020, on the measurement of power consumption and relevant power models of virtual entities as they apply to the telco cloud." This paper A Methodology and Testbed to Develop an Energy Model for 5G Virtualized RANs | IEEE Conference Publication | IEEE Xplore got best paper award for GreenNet 2024, but I am not sure if we are interested to model 5G vRAN.

There are plethora of publications on modeling communication networks and DC computing. I am not sure to what extent we need to work on modeling networks and devices in our architecture exercise.

### Recommendation

TBD

## Dynamic Scaling

The ability to adjust resources to need, and possibly turn some of them off during periods of low usage. Examples include the set of servers needed for a service, how many duplicate links are needed to carry high-volume traffic, whether one needs all base stations with overlapping coverage areas to be on, etc.

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

Dynamic scaling could be seen as either an alternative or complementary to load stabilization, e.g., via “peak shaving”. Perhaps the most realistic angle is that both are likely needed.

The most rudimentary approach to dynamic scaling is just turning some resources off. However, often this is not sufficient and a more graceful/engineered approach potentially yields better results.

A network architects need to understand the impacts of scaling changes on users and traffic. These may include fate of ongoing sessions, latency/jitter, packets in flight, or running processes, attempts to contact resources that are no longer present, and the time it takes for the network to converge to its new state.

Dynamic scaling requires an understanding of load levels for the network, so information collection is required. It also requires understanding the power, time and other costs of making changes. (See draft-pignataro for discussion of tradeoffs and multi-objective optimization.)

Some of the strategies that are useful in implementing a well working dynamic scaling include:

* Ability to enter “no new work” mode for equipment, to enable some resources to be eventually released/turned off.

* Ability to move ongoing tasks off to other equipment, to prevent disruption of already started tasks.

* Ability to schedule changes rather than making them abruptly, with associated signaling exchanges and possible transient routing and other failures. See for instance the TVR WG work in the IETF.

* Efficient propagation of changes of new routes, new set of servers, etc. as to reduce the amount of time where state across the network is not synchronized. The needs for the propagation solution needs to be driven by dynamic scaling and sustainability as well as other aspects, such as recovery from failures.

* Never expect a fixed set of resources, plan for dynamic set of resources, and build mechanisms to deal with dynamic changes.

* Dynamic scaling requires automation in most cases. See draft-pignataro for a discussion of automation.

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
argued in https://doi.org/10.23919/WONS54113.2022.9764413, reducing
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
lower-rate delivery instead of transmitting short high-rate bursts
(Sammy paper: https://doi.org/10.1145/3603269.3604839). However, this
is in contradiction with the energy-saving approach above. Thus, the
tradeoff is: should data be sent in a way that is “friendly” to others
(avoiding bad interference), or should it save energy by sending fast,
increasing the chance for equipment to enter a “sleep” state?

At the time of writing, the common choice for video is to opt for high
rate delivery, potentially saving energy, and possibly at the expense
of other traffic. For non-urgent data transfers, the IETF-recommended
default approach is the opposite: the LEDBAT congestion control
mechanism (RFC 6817), which is designed for such use, will always
“step out of the way” of other traffic, giving it a low rate when it
competes with any other traffic. Alternatively, if the goal is to
reduce energy, such traffic could be sent at a high rate, at a
strategically good moment within a longer time interval; this would
give network equipment an opportunity to enter a sleep state in the
remaining time period within the interval.

Perhaps the issue is that the transport behavior (as with many other
things) needs to take into account multiple parameters. For example,
it is possible that a balanced transport algorithm would be able to
send as much as possible as soon as possible, while tracking buffer
growth from transmission delays and scaling back if there’s any buffer
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

The ability to extend the useful life of protocols and/or network equipment in order to amortize the embedded energy costs over a longer period, even though it may mean that the protocols/equipment may not be fully optimized for the present use. [suggestion from Michael: This includes devising tools to inform network administrators and their users of the potential benefits of hardware upgrades, so that they can better decide to avoid unnecessary upgrades or delay them.]

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

### Recommendation

The guidelines above should be considered for any new system design.

TBD implementation and deployment guidance

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

## TBD

## ...

# Other Considerations

Transparency etc.

# Recommendations for Further Work and Research

Transport-related optimizations that enable devices to consume less
power by sleeping more appear potential, but require further research,
perhaps as part of the efforts in the SUSTAIN RG.

TBD

...

# Security Considerations

This document has no security-related discussion.

# IANA Considerations

This document has no IANA actions.


--- back

# Acknowledgments
{:numbered="false"}

TODO acknowledge.
