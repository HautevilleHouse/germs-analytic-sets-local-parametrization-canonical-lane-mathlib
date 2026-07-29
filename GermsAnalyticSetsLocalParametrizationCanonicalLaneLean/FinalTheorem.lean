import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GermsAnalyticSetsLocalParametrizationCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.GermsAnalyticSetsLocalParametrizationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GermsAnalyticSetsLocalParametrizationCanonicalLaneLean

def ConstrainedAnalyticSetClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_analytic_set_endgame (A : AdmissibleClass) :
    ConstrainedAnalyticSetClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GermsAnalyticSetsLocalParametrizationCanonicalLaneLean
end HautevilleHouse
