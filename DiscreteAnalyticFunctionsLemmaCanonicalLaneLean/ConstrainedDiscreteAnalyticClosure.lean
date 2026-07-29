import DiscreteAnalyticFunctionsLemmaCanonicalLaneLean.DiscreteMaximumPrincipleLayer
import DiscreteAnalyticFunctionsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsLemmaCanonicalLaneLean

open HautevilleHouse.DiscreteAnalyticFunctionsLemmaCanonicalLaneLean

def ConstrainedDiscreteAnalyticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discrete_analytic_endgame (A : AdmissibleClass) :
    ConstrainedDiscreteAnalyticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteAnalyticFunctionsLemmaCanonicalLaneLean
end HautevilleHouse