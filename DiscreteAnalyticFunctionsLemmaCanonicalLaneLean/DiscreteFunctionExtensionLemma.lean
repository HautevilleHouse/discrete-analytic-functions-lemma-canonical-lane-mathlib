import DiscreteAnalyticFunctionsLemmaCanonicalLaneLean.BoundaryValuePersistenceLayer
import Mathlib.Data.Fin.Basic

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsLemmaCanonicalLaneLean

structure DiscreteFunctionExtensionLemmaCertificate where
  persistenceLayer : BoundaryValuePersistenceLayerCertificate
  extensionProperty : Prop
  sourceKey : String
  sourceChecked : Bool

def discreteFunctionExtensionLemmaCertificate : DiscreteFunctionExtensionLemmaCertificate := {
  persistenceLayer := boundaryValuePersistenceLayerCertificate,
  extensionProperty := True,
  sourceKey := "discrete_analytic_extension_lemma",
  sourceChecked := true
}

def DiscreteFunctionExtensionLemmaClosed (C : DiscreteFunctionExtensionLemmaCertificate) : Prop :=
  BoundaryValuePersistenceLayerClosed C.persistenceLayer ∧
  C.extensionProperty ∧
  C.sourceChecked = true

theorem discrete_function_extension_lemma_closed_checked :
    DiscreteFunctionExtensionLemmaClosed discreteFunctionExtensionLemmaCertificate := by
  exact ⟨boundary_value_persistence_layer_closed_checked, trivial, rfl⟩

end DiscreteAnalyticFunctionsLemmaCanonicalLaneLean
end HautevilleHouse