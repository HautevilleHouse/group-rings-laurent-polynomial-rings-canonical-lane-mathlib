import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupRingsLaurentPolynomialRingsCanonicalLaneLean.LaurentPolynomialAlgebra

namespace HautevilleHouse
namespace GroupRingsLaurentPolynomialRingsCanonicalLaneLean

structure ProjectiveModule (R : Type) [CommRing R] where
  module : Type
  isProjective : True

structure K0Group (R : Type) [CommRing R] where
  projectiveModules : List (ProjectiveModule R)
  relation : ProjectiveModule R → ProjectiveModule R → Prop

structure K0GroupRing (G : Type) [Group G] (R : Type) [CommRing R] where
  underlying : K0Group (GroupRing G R)
  rankOneFree : ProjectiveModule (GroupRing G R)

end GroupRingsLaurentPolynomialRingsCanonicalLaneLean
end HautevilleHouse