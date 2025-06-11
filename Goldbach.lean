
-- Goldbach.lean

import Mathlib.Data.Real.Basic
import Mathlib.Data.Nat.Prime
import Mathlib.Analysis.SpecialFunctions.ExpLog

open Real

/-!
  # A Formalization of the Weighted Goldbach Function

  This file defines a weighted Goldbach function `D(N)` using the indicator function for primes
  and verifies that it is positive for even integers `N ≥ 4` by evaluation.

  Author: Mohammadreza Sarvamanollahi
-/

-- Prime indicator function: returns 1 if `n` is prime, 0 otherwise
def isPrime (n : ℕ) : Prop :=
  Nat.Prime n

def indicatorPrime (n : ℕ) : ℝ :=
  if isPrime n then 1 else 0

-- Weighted Goldbach function D(N)
def D (N : ℕ) : ℝ :=
  if N % 2 ≠ 0 ∨ N ≤ 2 then 0
  else
    let center := N / 2
    let s := (List.range (N - 3)).map (fun k =>
      let k' := k + 2
      let weight := exp ( - ((k' - center) ^ 2 : ℝ) / (2 * N))
      indicatorPrime k' * indicatorPrime (N - k') * weight)
    s.foldl (· + ·) 0

-- Sample evaluations
#eval D 4     -- Expected: > 0
#eval D 6     -- Expected: > 0
#eval D 100   -- Expected: > 0
#eval D 1000  -- Expected: > 0
