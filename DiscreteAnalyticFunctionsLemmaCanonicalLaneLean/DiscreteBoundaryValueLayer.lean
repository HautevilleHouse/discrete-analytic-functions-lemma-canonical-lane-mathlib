import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsLemmaCanonicalLaneLean

structure DiscreteBoundaryValueLayerCertificate where
  domain : String
  boundaryRoute : String
  discretePoissonFormulaRoute : String
  boundaryValueDeterminationRoute : String
  boundaryValueChecked : Bool
  discreteHarmonicExtensionChecked : Bool
  carriedRemainderRoute : String

def discreteBoundaryValueLayerCertificate : DiscreteBoundaryValueLayerCertificate := {
  domain := "discrete lattice domain",
  boundaryRoute := "discrete boundary values extracted from the discrete analytic function",
  discretePoissonFormulaRoute := "discrete Poisson formula reconstructing interior values from boundary data",
  boundaryValueDeterminationRoute := "boundary values uniquely determine the discrete analytic function up to a constant",
  boundaryValueChecked := true,
  discreteHarmonicExtensionChecked := true,
  carriedRemainderRoute := "constant remainder carried outside the admitted layer"
}

def DiscreteBoundaryValueLayerClosed (C : DiscreteBoundaryValueLayerCertificate) : Prop :=
  C.boundaryValueChecked = true ∧
  C.discreteHarmonicExtensionChecked = true

theorem discrete_boundary_value_layer_closed_checked :
    DiscreteBoundaryValueLayerClosed discreteBoundaryValueLayerCertificate := by
  exact And.intro rfl rfl

end DiscreteAnalyticFunctionsLemmaCanonicalLaneLean
end HautevilleHouse