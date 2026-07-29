import DiscreteAnalyticFunctionsLemmaCanonicalLaneLean.DiscreteAnalyticFunction

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiscreteAnalyticFunctionClosed (primitiveDiscreteAnalyticFunction)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact primitive_discrete_analytic_function_closed

end DiscreteAnalyticFunctionsLemmaCanonicalLaneLean
end HautevilleHouse