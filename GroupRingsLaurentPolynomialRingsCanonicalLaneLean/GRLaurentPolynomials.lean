import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupRingsLaurentPolynomialRingsCanonicalLaneLean

structure LaurentPolynomial (R : Type) [CommRing R] where
  support : Finset ℤ
  coeff : ℤ → R
  finiteSupport : ∀ i, coeff i ≠ 0 → i ∈ support

def LaurentPolynomial.mul {R : Type} [CommRing R] (f g : LaurentPolynomial R) : LaurentPolynomial R :=
  { support := f.support.image (λ i => i) ∪ g.support.image (λ j => j),
    coeff := λ n => ∑ i in f.support, f.coeff i * g.coeff (n - i),
    finiteSupport := by
      intro n h
      sorry
  }

structure GroupRing (G : Type) [Group G] (R : Type) [CommRing R] where
  support : Finset G
  coeff : G → R
  finiteSupport : ∀ g, coeff g ≠ 0 → g ∈ support

def GroupRing.mul {G : Type} [Group G] {R : Type} [CommRing R] (f g : GroupRing G R) : GroupRing G R :=
  { support := f.support.product g.support,
    coeff := λ h => ∑ p in f.support.product g.support, f.coeff p.1 * g.coeff p.2,
    finiteSupport := by
      intro h
      sorry
  }

structure LaurentPolynomialWithAction (R : Type) [CommRing R] (G : Type) [Group G] where
  poly : LaurentPolynomial R
  action : G → LaurentPolynomial R → LaurentPolynomial R

def ProjectedLaurentLanguage (R : Type) [CommRing R] : Set (LaurentPolynomial R) :=
  { p | ∀ i, p.coeff i ≠ 0 → i ≥ 0 }

end GroupRingsLaurentPolynomialRingsCanonicalLaneLean
end HautevilleHouse