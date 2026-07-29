import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupRingsLaurentPolynomialRingsCanonicalLaneLean

structure LaurentPolynomial (R : Type) [CommRing R] where
  support : List ℤ
  coefficients : ℤ → R
  finiteSupport : {z : ℤ | coefficients z ≠ 0}.Finite

def LaurentPolynomialRing (R : Type) [CommRing R] : Type := LaurentPolynomial R

structure GroupRing (G : Type) [Group G] (R : Type) [CommRing R] where
  support : List G
  coefficients : G → R
  finiteSupport : {g : G | coefficients g ≠ 0}.Finite

end GroupRingsLaurentPolynomialRingsCanonicalLaneLean
end HautevilleHouse