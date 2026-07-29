import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupRingsLaurentPolynomialRingsCanonicalLaneLean.GRLaurentPolynomials

namespace HautevilleHouse
namespace GroupRingsLaurentPolynomialRingsCanonicalLaneLean

def AdmittedObject := GroupRing ℤ ℤ

structure AdmissibleClass where
  lane : AdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupRingsLaurentPolynomialRingsCanonicalLaneLean
end HautevilleHouse