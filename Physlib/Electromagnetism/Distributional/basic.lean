/-
Copyright (c) 2025 Cameron Lee. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Cameron Lee
-/
module

public import Mathlib.Analysis.Distribution.Distribution
public import Physlib.SpaceAndTime.TimeAndSpace.ConstantTimeDist
public import Physlib.SpaceAndTime.SpaceTime.TimeSlice


/-!

# The Electromagnetic Potential

## i. Overview

The electromagnetic potential `A^μ` is the fundamental objects in
electromagnetism. Mathematically it is related to a connection
on a `U(1)`-bundle.

We define the electromagnetic potential as a distribution from
spacetime to contravariant Lorentz vectors.

## ii. Key results

- `DistElectromagneticPotential` : the type of electromagnetic potentials as distributions.

## iii. Table of contents

- A. The electromagnetic potential as a distribution
  - A.1. Constructors
  - A.2. The derivative of the electromagnetic potential as a distribution
  - A.3. The derivative in terms of the basis

## iv. References

* none.
-/

@[expose] public section

namespace Electromagnetism
open Distributions
open Module realLorentzTensor
open TensorSpecies
open Tensor

/-!

## A. The electromagnetic potential as a distribution

-/

/-- The electromagnetic potential as a distribution and as a tensor `A^μ`. -/
structure DistElectromagneticPotential (d : ℕ := 3) where
  /-- -/
  val : 𝓓'(⟨Set.univ (α := SpaceTime d) , isOpen_univ⟩, (Lorentz.Vector d))

/- Define an equivalence between this and types
   Use this equivalence to give this a module structure (PR)
   Compare to constructors for TempDist-/
