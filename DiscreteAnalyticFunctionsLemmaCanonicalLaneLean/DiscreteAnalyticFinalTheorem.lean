import DiscreteAnalyticFunctionsLemmaCanonicalLaneLean.DiscreteAnalyticAdmissibleClass

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsLemmaCanonicalLaneLean

def DiscreteAnalyticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem discrete_analytic_endgame (A : AdmissibleClass) :
    DiscreteAnalyticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

def constrainedTheodorusClosure (A : AdmissibleClass) : Prop :=
  DiscreteAnalyticClosure A

theorem constrained_theodorus_closure_checked (A : AdmissibleClass) :
    constrainedTheodorusClosure A := by
  exact discrete_analytic_endgame A

end DiscreteAnalyticFunctionsLemmaCanonicalLaneLean
end HautevilleHouse