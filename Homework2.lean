/-
# Lean homework 2: derivatives
-/
import Mathlib

namespace Homework2
/-

## Problem: the derivative of a sum

`f` has derivative `f'` at `a`. For `x ≠ a`, the inequality says
`|(f x - f a) / (x - a) - f'| ≤ ε`: the difference quotient tends to
`f'`. Written without division, it needs no special case for `x = a`.
-/
def DerivAt (f : ℝ → ℝ) (f' a : ℝ) : Prop :=
  ∀ ε > 0, ∃ δ > 0, ∀ x, |x - a| < δ → |f x - f a - f' * (x - a)| ≤ ε * |x - a|
/-

Using the definition above, state and prove in Lean that the derivative
of a sum is the sum of the derivatives.
-/
-- your statement and proof here

end Homework2
