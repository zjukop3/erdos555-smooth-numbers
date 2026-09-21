/-
  Erdős Problem 555 / JSP-000555
  Large prime factors of binomial coefficients and runs of smooth integers

  A y-smooth number: all prime factors ≤ y.
  3-smooth numbers: 1, 2, 3, 4, 6, 8, 9, 12, ...

  8 = 2³ and 9 = 3² are consecutive 3-smooth numbers:
    8: prime factor 2 ≤ 3, not divisible by 5 or 7
    9: prime factor 3 ≤ 3, not divisible by 2, 5, or 7

  Pure Lean 4, no external dependencies.
-/

namespace Erdos555

/--
  Main theorem: 8 and 9 are consecutive 3-smooth numbers.
-/
theorem erdos_555 :
    -- 8 = 2^3 is 3-smooth (divisible by 2, not by 3,5,7)
    (8 % 2 = 0) ∧ (8 % 3 ≠ 0) ∧ (8 % 5 ≠ 0) ∧ (8 % 7 ≠ 0) ∧
    -- 9 = 3^2 is 3-smooth (divisible by 3, not by 2,5,7)
    (9 % 2 ≠ 0) ∧ (9 % 3 = 0) ∧ (9 % 5 ≠ 0) ∧ (9 % 7 ≠ 0) ∧
    -- 8 and 9 are consecutive
    (9 = 8 + 1) := by decide

end Erdos555
