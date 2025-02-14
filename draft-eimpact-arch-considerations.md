---
title: "Architectural Considerations for Building Sustainable Communication Systems"
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

TODO Abstract


--- middle

# Introduction

Protocol and network architecture can have an impact on
sustainability. At the very least the right architecture can make it
possible to have a positive impact, but of course the architecture
alone is not enough. The possibilities offered by the architecture
need to be employed by implementations and practical deployments.

To give some examples of architectural aspects that potentially have a
sustainability impacts, these can be about enabling information (e.g.,
energy consumption data) and using that information, making dynamic
scaling of resources possible, resource selection performed in a
sustainability-aware fashion, unicast vs. multicast architectures,
textual vs. binary encoding, and improvements in the chattiness of
protocols.

But there are also often tradeoffs, such as side-effects of
architectural choices, e.g., dynamic scaling of a router network
potentially impacting jitter.

This document discusses some of these architectural aspects and
considerations related to them.

# Security Considerations

This document has no security-related discussion.

# IANA Considerations

This document has no IANA actions.


--- back

# Acknowledgments
{:numbered="false"}

TODO acknowledge.
