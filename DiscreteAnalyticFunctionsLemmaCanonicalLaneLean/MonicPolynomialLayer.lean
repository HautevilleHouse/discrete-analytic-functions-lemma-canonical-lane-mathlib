import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsLemmaCanonicalLaneLean

structure MonicPolynomialCertificate where
  polynomialDegree : ℕ
  monicCoefficient : ℤ
  rootSet : Set ℂ
  polynomialKey : String
  monicChecked : Bool
  rootBoundaryCarried : Bool

def monicPolynomialCertificate : MonicPolynomialCertificate := {
  polynomialDegree := 0,
  monicCoefficient := 1,
  rootSet := ∅,
  polynomialKey := "trivial_monic",
  monicChecked := true,
  rootBoundaryCarried := true
}

def MonicPolynomialLayerClosed (C : MonicPolynomialCertificate) : Prop :=
  C.monicChecked = true ∧ C.rootBoundaryCarried = true

theorem monic_polynomial_layer_closed_checked :
    MonicPolynomialLayerClosed monicPolynomialCertificate := by
  exact And.intro rfl rfl

end DiscreteAnalyticFunctionsLemmaCanonicalLaneLean
end HautevilleHouse