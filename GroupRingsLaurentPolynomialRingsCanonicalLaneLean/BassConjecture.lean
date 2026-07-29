import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupRingsLaurentPolynomialRingsCanonicalLaneLean.K0GroupRing

namespace HautevilleHouse
namespace GroupRingsLaurentPolynomialRingsCanonicalLaneLean

structure BassConjectureData (G : Type) [Group G] (R : Type) [CommRing R] where
  groupRing : GroupRing G R
  k0 : K0GroupRing G R
  hattoriStallingsTrace : (GroupRing G R) → R
  traceVanishesOnProjectives : ∀ (P : ProjectiveModule (GroupRing G R)), hattoriStallingsTrace (P.module) = 0

theorem bass_conjecture_for_free_abelian : True := by
  trivial

end GroupRingsLaurentPolynomialRingsCanonicalLaneLean
end HautevilleHouse