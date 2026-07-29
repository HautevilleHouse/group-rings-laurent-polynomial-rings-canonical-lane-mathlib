import HautevilleHouse.GroupRingsLaurentPolynomialRingsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GroupRingsLaurentPolynomialRingsCanonicalLaneLean

def ConstrainedGRLaurentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gr_laurent_endgame (A : AdmissibleClass) :
    ConstrainedGRLaurentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupRingsLaurentPolynomialRingsCanonicalLaneLean
end HautevilleHouse