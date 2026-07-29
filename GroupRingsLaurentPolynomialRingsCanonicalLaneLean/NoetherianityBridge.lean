import HautevilleHouse.GroupRingsLaurentPolynomialRingsCanonicalLaneLean.GRLaurentPolynomials

namespace HautevilleHouse
namespace GroupRingsLaurentPolynomialRingsCanonicalLaneLean

def NoetherianCondition (R : Type) [CommRing R] : Prop :=
  ∀ (I : Ideal R), I.FG

theorem laurent_polynomial_noetherian (R : Type) [CommRing R] [IsNoetherianRing R] :
    NoetherianCondition (LaurentPolynomial R) := by
  sorry

end GroupRingsLaurentPolynomialRingsCanonicalLaneLean
end HautevilleHouse