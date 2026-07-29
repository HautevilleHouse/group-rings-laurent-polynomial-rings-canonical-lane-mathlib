import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupRingsLaurentPolynomialRingsCanonicalLaneLean.LaurentPolynomialAlgebra

namespace HautevilleHouse
namespace GroupRingsLaurentPolynomialRingsCanonicalLaneLean

structure TwistedGroupRing (G : Type) [Group G] (R : Type) [CommRing R] where
  baseRing : LaurentPolynomialRing R
  group : G
  twist : G → G → R
  cocycleCondition : ∀ g h k, twist g h * twist (g*h) k = twist h k * twist g (h*k)

structure CrossedProduct (G : Type) [Group G] (R : Type) [CommRing R] where
  groupRing : GroupRing G R
  action : G → R → R
  actionCompatibility : ∀ g h r, action g (action h r) = action (g*h) r

end GroupRingsLaurentPolynomialRingsCanonicalLaneLean
end HautevilleHouse