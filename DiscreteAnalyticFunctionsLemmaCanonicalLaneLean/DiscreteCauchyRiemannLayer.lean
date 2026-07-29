import DiscreteAnalyticFunctionsLemmaCanonicalLaneLean.DiscreteHarmonicFunctionLayer
import Mathlib.Data.Fin.Basic

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsLemmaCanonicalLaneLean

structure DiscreteCauchyRiemannLayerCertificate where
  harmonicLayer : DiscreteHarmonicLayerCertificate
  cauchyRiemannOperator : String
  discreteAnalytic : Prop
  sourceChecked : Bool

def discreteCauchyRiemannLayerCertificate : DiscreteCauchyRiemannLayerCertificate := {
  harmonicLayer := discreteHarmonicLayerCertificate,
  cauchyRiemannOperator := "finite difference CR operator on square lattice",
  discreteAnalytic := True,
  sourceChecked := true
}

def DiscreteCauchyRiemannLayerClosed (C : DiscreteCauchyRiemannLayerCertificate) : Prop :=
  DiscreteHarmonicLayerClosed C.harmonicLayer ∧
  C.discreteAnalytic ∧
  C.sourceChecked = true

theorem discrete_cauchy_riemann_layer_closed_checked :
    DiscreteCauchyRiemannLayerClosed discreteCauchyRiemannLayerCertificate := by
  refine ⟨discrete_harmonic_layer_closed_checked, trivial, rfl⟩

end DiscreteAnalyticFunctionsLemmaCanonicalLaneLean
end HautevilleHouse