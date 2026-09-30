/-
Copyright (c) 2026 Matteo Nerini. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Matteo Nerini, Claude AI
-/
import MiLAC.PhaseShifters
import MiLAC.HybridCouplersPhaseShifters

/-!
# MiLAC

A Lean formalization of microwave linear analog computers (MiLACs), networks of
microwave components whose transmission scattering matrix computes a linear
transformation of the input signals.

* `MiLAC.PhaseShifters`: networks of phase shifters, and the characterization of the
  transformations they compute.
* `MiLAC.HybridCouplersPhaseShifters`: networks of hybrid couplers and phase shifters,
  and the characterization of the transformations they compute.
-/
