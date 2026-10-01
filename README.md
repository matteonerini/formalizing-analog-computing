# Toward a Lean Formalization of Analog Computing With Microwaves

This repository contains the code associated with the paper

> M. Nerini, X. Liu, B. Clerckx, "[Toward a Lean formalization of analog computing with microwaves](https://arxiv.org)," arXiv:, 2026 (to appear).

## Overview

This repository contains a [Lean 4](https://lean-lang.org) formalization of results on analog computing with microwaves. All definitions, lemmas, and theorems are checked by Lean.

The folder [`MiLAC`](MiLAC) formalizes results on **microwave linear analog computers (MiLACs)**, i.e., networks of microwave components that compute linear transformations of the input signals, presented in the paper

> M. Nerini, X. Liu, B. Clerckx, "[Analog computing with hybrid couplers and phase shifters](https://ieeexplore.ieee.org/document/11658529)," IEEE Trans. Microw. Theory Tech., 2026.

A network is represented by its transmission scattering matrix, and is said to be *implementable* if it can be obtained from the available components through series and parallel connections.

| File | Components | Main results |
|---|---|---|
| [`PhaseShifters.lean`](MiLAC/PhaseShifters.lean) | Phase shifters, interconnections, and permutation networks | `implementable_iff_permutedPhaseDiagonal`: a network is implementable if and only if its transmission scattering matrix is `P diag(exp(j φ₁), …, exp(j φₙ))`, for a permutation matrix `P` and phases `φ₁, …, φₙ`. |
| [`HybridCouplersPhaseShifters.lean`](MiLAC/HybridCouplersPhaseShifters.lean) | Hybrid couplers, phase shifters, interconnections, and permutation networks | `implementable_iff_layered`: a network is implementable if and only if its transmission scattering matrix is `P_L D_L ⋯ P_1 D_1 P_0`, for permutation matrices `P_ℓ` and block diagonal matrices `D_ℓ`, whose diagonal blocks are 2 × 2 blocks `D(θ₁₁, θ₁₂, θ₂₁)` and phase shifts `exp(j φ)`.<br><br>`implementable_dft`: the `N × N` discrete Fourier transform (DFT) matrix, with `N = 2^L`, is implementable. |

## Usage

### Online

Each file is self-contained, as it only imports Mathlib. Therefore, it can be read, checked, and modified in the browser with [Lean 4 Web](https://live.lean-lang.org), without any installation, by following these links:

- [Open `PhaseShifters.lean` in Lean 4 Web](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fmatteonerini%2Fformalizing-analog-computing%2Fmain%2FMiLAC%2FPhaseShifters.lean)
- [Open `HybridCouplersPhaseShifters.lean` in Lean 4 Web](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fmatteonerini%2Fformalizing-analog-computing%2Fmain%2FMiLAC%2FHybridCouplersPhaseShifters.lean)

Alternatively, copy the content of a file and paste it into the Lean 4 Web editor.

Lean 4 Web uses a recent version of Mathlib, which may differ from the one used in this repository (see [Requirements](#requirements)).

### Local installation

1. Install VS Code and the Lean 4 extension, following the [official instructions](https://lean-lang.org/install/).
2. In VS Code, open the command palette (`Ctrl+Shift+P`, or `Cmd+Shift+P` on macOS) and run `Lean 4: Open Project: Download Project`. Alternatively, open a Lean file, click on the ∀ symbol in the top-right corner of the editor, and select `Open Project…` → `Download Project…`.
3. Enter the URL of this repository:
   ```
   https://github.com/matteonerini/formalizing-analog-computing
   ```
4. Select the directory where the project should be saved and a name for its folder (e.g., `formalizing-analog-computing`). The extension downloads the project and the precompiled Mathlib files, which takes a few minutes.
5. After the download, accept the suggestion to open the project folder. When a file in [`MiLAC`](MiLAC) is opened, the Lean Infoview shows the proof state at the cursor position.

## Requirements

- Lean `v4.35.0-rc2` (see [`lean-toolchain`](lean-toolchain))
- Mathlib `v4.35.0-rc2` (see [`lakefile.toml`](lakefile.toml))

## Acknowledgment

The authors used [Claude](https://claude.ai) (Anthropic) to assist in developing the Lean code, whose proofs are all checked by the Lean kernel.
The authors also thank the Mathlib community for developing and maintaining the [Mathlib](https://github.com/leanprover-community/mathlib4) library, on which this formalization builds.