# Toward a Lean Formalization of Analog Computing With Microwaves

This repository contains code associated with the paper:

> M. Nerini, X. Liu, B. Clerckx, "[Toward a Lean formalization of analog computing with microwaves](https://arxiv.org)," arXiv:, 2026 (to appear).

## Code

This is a [Lean 4](https://lean-lang.org) formalization, based on [Mathlib](https://github.com/leanprover-community/mathlib4), of results on analog computing with microwaves.

The folder [`MiLAC`](MiLAC) contains the formalization of results on **microwave linear analog computers (MiLACs)**, i.e., networks of microwave components that compute linear transformations of the input signals.

The two files in [`MiLAC`](MiLAC) formalize the results of the paper

> M. Nerini, X. Liu, B. Clerckx, "[Analog computing with hybrid couplers and phase shifters](https://ieeexplore.ieee.org/document/11658529)," IEEE Trans. Microw. Theory Tech., 2026.

| File | Components | Main results |
|---|---|---|
| [`PhaseShifters.lean`](MiLAC/PhaseShifters.lean) | Phase shifters, interconnections, and permutation networks | `implementable_iff_permutedPhaseDiagonal`: a network is implementable if and only if its transmission scattering matrix is `P_σ diag(exp(j φ₁), …, exp(j φₙ))`, for a permutation matrix `P_σ` and phases `φ₁, …, φₙ`. |
| [`HybridCouplersPhaseShifters.lean`](MiLAC/HybridCouplersPhaseShifters.lean) | Hybrid couplers, phase shifters, interconnections, and permutation networks | `implementable_iff_layered`: a network is implementable if and only if its transmission scattering matrix is `P_L D_L ⋯ P_1 D_1 P_0`, for permutation matrices `P_ℓ` and block diagonal matrices `D_ℓ` having specific properties.<br><br>`implementable_dft`: the `N × N` discrete Fourier transform (DFT) matrix, with `N = 2^L`, is implementable. |

## Usage

### Online

Each file is self-contained, as it only imports Mathlib. Therefore, it can be read, checked, and modified in the browser with [Lean 4 Web](https://live.lean-lang.org), without any installation.
You only need to copy the content of the file and paste it into the Lean 4 Web editor.

### Local installation

1. Install VS Code and the Lean 4 extension, following the [official instructions](https://lean-lang.org/install/).
2. In VS Code, open any file, click on the ∀ symbol in the top-right corner of the editor, and select `Open Project…` → `Download Project…`.
3. Enter the URL of this repository:
   ```
   https://github.com/matteonerini/formalizing-analog-computing
   ```
4. Select the directory where the project should be saved and a name for its folder (e.g., `formalizing-analog-computing`). The extension downloads the project and the precompiled Mathlib files, which takes a few minutes.
5. After the download, accept the suggestion to open the project folder. When a file in [`MiLAC`](MiLAC) is opened, the Lean Infoview shows the proof state at the cursor position.