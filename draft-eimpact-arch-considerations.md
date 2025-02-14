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

## Dynamic Scaling

## Transport

## TBD

## TBD

# Recommendations for Further Work and Research

TBD

# Security Considerations

This document has no security-related discussion.

# IANA Considerations

This document has no IANA actions.


--- back

# Acknowledgments
{:numbered="false"}

TODO acknowledge.
