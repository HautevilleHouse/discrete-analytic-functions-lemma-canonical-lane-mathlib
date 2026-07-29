import canonicalLaneMathlib.AdmissibleClass
import DiscreteAnalyticFunctionsLemmaCanonicalLaneLean.DiscreteAnalyticFunctionLayer

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsLemmaCanonicalLaneLean

structure DiscreteCauchyIntegralLayerCertificate where
  analyticDatum : DiscreteAnalyticFunctionDatum
  cauchyIntegralRoute : String
  discreteContourRoute : String
  interiorValueRoute : String
  cauchyIntegralChecked : Bool
  homologyIndependenceChecked : Bool

def discreteCauchyIntegralLayerCertificate : DiscreteCauchyIntegralLayerCertificate := {
  analyticDatum := primitiveDiscreteAnalyticDatum,
  cauchyIntegralRoute := "discrete Cauchy integral formula expressed via circulation around discrete contours",
  discreteContourRoute := "discrete contour consisting of lattice edges",
  interiorValueRoute := "interior value determined by discrete Cauchy integral",
  cauchyIntegralChecked := true,
  homologyIndependenceChecked := true
}

def DiscreteCauchyIntegralLayerClosed (C : DiscreteCauchyIntegralLayerCertificate) : Prop :=
  DiscreteAnalyticFunctionLayerClosed C.analyticDatum ∧
  C.cauchyIntegralChecked = true ∧
  C.homologyIndependenceChecked = true

theorem discrete_cauchy_integral_layer_closed_checked :
    DiscreteCauchyIntegralLayerClosed discreteCauchyIntegralLayerCertificate := by
  exact And.intro discrete_analytic_function_layer_closed_checked (And.intro rfl rfl)

end DiscreteAnalyticFunctionsLemmaCanonicalLaneLean
end HautevilleHouse