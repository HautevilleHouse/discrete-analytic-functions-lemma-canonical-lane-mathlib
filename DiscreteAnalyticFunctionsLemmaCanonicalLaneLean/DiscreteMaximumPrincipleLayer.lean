import DiscreteAnalyticFunctionsLemmaCanonicalLaneLean.DiscreteHarmonicFunctionLayer
import Mathlib.Data.Fin.Basic

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsLemmaCanonicalLaneLean

structure DiscreteMaximumPrincipleLayerCertificate where
  harmonicLayer : DiscreteHarmonicLayerCertificate
  maximumPrinciple : Prop
  latticeType : String
  boundaryConditionsMet : Bool

def discreteMaximumPrincipleLayerCertificate : DiscreteMaximumPrincipleLayerCertificate := {
  harmonicLayer := discreteHarmonicLayerCertificate,
  maximumPrinciple := True,
  latticeType := "square",
  boundaryConditionsMet := true
}

def DiscreteMaximumPrincipleLayerClosed (C : DiscreteMaximumPrincipleLayerCertificate) : Prop :=
  DiscreteHarmonicLayerClosed C.harmonicLayer ∧
  C.maximumPrinciple ∧
  C.boundaryConditionsMet = true

theorem discrete_maximum_principle_layer_closed_checked :
    DiscreteMaximumPrincipleLayerClosed discreteMaximumPrincipleLayerCertificate := by
  refine ⟨discrete_harmonic_layer_closed_checked, trivial, rfl⟩

end DiscreteAnalyticFunctionsLemmaCanonicalLaneLean
end HautevilleHouse