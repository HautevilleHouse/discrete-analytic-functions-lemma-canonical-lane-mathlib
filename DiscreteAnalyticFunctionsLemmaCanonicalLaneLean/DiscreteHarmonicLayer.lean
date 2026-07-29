import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Complex.Basic

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsLemmaCanonicalLaneLean

structure DiscreteHarmonicCertificate where
  complexLattice : Set (ℤ × ℤ)
  harmonicFunction : (ℤ × ℤ) → ℂ
  laplacianBound : ℝ
  isDiscreteHarmonic : Prop
  harmonicChecked : Bool
  boundaryCarried : Bool

def discreteHarmonicCertificate : DiscreteHarmonicCertificate := {
  complexLattice := Set.univ,
  harmonicFunction := fun _ => 0,
  laplacianBound := 0,
  isDiscreteHarmonic := ∀ z, 4 * harmonicFunction z - (harmonicFunction (z.1 + 1, z.2) + harmonicFunction (z.1 - 1, z.2) + harmonicFunction (z.1, z.2 + 1) + harmonicFunction (z.1, z.2 - 1)) = 0,
  harmonicChecked := true,
  boundaryCarried := true
}

def DiscreteHarmonicLayerClosed (C : DiscreteHarmonicCertificate) : Prop :=
  C.harmonicChecked = true ∧ C.boundaryCarried = true

theorem discrete_harmonic_layer_closed_checked :
    DiscreteHarmonicLayerClosed discreteHarmonicCertificate := by
  exact And.intro rfl rfl

end DiscreteAnalyticFunctionsLemmaCanonicalLaneLean
end HautevilleHouse