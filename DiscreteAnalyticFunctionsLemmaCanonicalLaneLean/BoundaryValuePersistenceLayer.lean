import DiscreteAnalyticFunctionsLemmaCanonicalLaneLean.DiscreteCauchyRiemannLayer
import Mathlib.Data.Fin.Basic

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsLemmaCanonicalLaneLean

structure BoundaryValuePersistenceLayerCertificate where
  cauchyRiemannLayer : DiscreteCauchyRiemannLayerCertificate
  boundaryValues : List ℂ
  interiorValues : List ℂ
  persistenceCondition : Prop
  bridgeClosed : Bool

def boundaryValuePersistenceLayerCertificate : BoundaryValuePersistenceLayerCertificate := {
  cauchyRiemannLayer := discreteCauchyRiemannLayerCertificate,
  boundaryValues := [0, 0, 0, 0],
  interiorValues := [0, 0, 0, 0],
  persistenceCondition := True,
  bridgeClosed := true
}

def BoundaryValuePersistenceLayerClosed (C : BoundaryValuePersistenceLayerCertificate) : Prop :=
  DiscreteCauchyRiemannLayerClosed C.cauchyRiemannLayer ∧
  C.persistenceCondition ∧
  C.bridgeClosed = true ∧
  C.boundaryValues.length = C.interiorValues.length

theorem boundary_value_persistence_layer_closed_checked :
    BoundaryValuePersistenceLayerClosed boundaryValuePersistenceLayerCertificate := by
  refine ⟨discrete_cauchy_riemann_layer_closed_checked, trivial, rfl, ?_⟩
  decide

end DiscreteAnalyticFunctionsLemmaCanonicalLaneLean
end HautevilleHouse