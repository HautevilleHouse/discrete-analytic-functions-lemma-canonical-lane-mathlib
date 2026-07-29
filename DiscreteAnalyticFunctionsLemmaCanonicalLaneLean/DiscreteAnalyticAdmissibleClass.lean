import DiscreteAnalyticFunctionsLemmaCanonicalLaneLean.DiscreteAnalyticGate

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsLemmaCanonicalLaneLean

structure DiscreteAnalyticAdmittedObject where
  object : DiscreteAnalyticFunction
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admissibleClassFromAdmittedObject (O : DiscreteAnalyticAdmittedObject) : AdmissibleClass :=
  {
    object := O.object,
    endpointSatisfied := O.endpointSatisfied,
    remainderRecorded := O.remainderRecorded,
    gateWitness := O.gateWitness
  }

def primitiveAdmittedObject : DiscreteAnalyticAdmittedObject :=
  {
    object := primitiveDiscreteAnalyticFunction,
    endpointSatisfied := DiscreteAnalyticFunctionClosed primitiveDiscreteAnalyticFunction,
    remainderRecorded := True,
    gateWitness := Or.inl primitive_discrete_analytic_function_closed
  }

def primitiveAdmissibleClass : AdmissibleClass :=
  admissibleClassFromAdmittedObject primitiveAdmittedObject

end DiscreteAnalyticFunctionsLemmaCanonicalLaneLean
end HautevilleHouse