import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GermsAnalyticSetsLocalParametrizationCanonicalLaneLean.GermAnalyticSetLayer

namespace HautevilleHouse
namespace GermsAnalyticSetsLocalParametrizationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GermAnalyticLayerClosed germAnalyticLayerCertificate

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact germ_analytic_layer_closed_checked

end GermsAnalyticSetsLocalParametrizationCanonicalLaneLean
end HautevilleHouse
