import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GermsAnalyticSetsLocalParametrizationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  carriedRemainder : String
  derivedParametrization : String
  germAnalyticClass : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "germs-analytic-sets-local-parametrization",
    theoremName := "Local Parametrization of Germs of Analytic Sets",
    theoremObject := "Every germ of an analytic set admits a local parametrization by a finite cover of analytic maps from open subsets of complex Euclidean space",
    classicalBoundary := "classical complex analytic geometry boundary: Weierstrass preparation, Noether normalization, analytic sheaves",
    carriedRemainder := "unrestricted classical analytic geometry theorem stack remains carried outside this admitted Lean layer",
    derivedParametrization := "finite analytic cover via Weierstrass division",
    germAnalyticClass := "germ of analytic set at a point in complex space"
  }

def ClassicalSourceBoundaryCarried : Prop :=
  sourceTheoremStatement.classicalBoundary = "classical complex analytic geometry boundary: Weierstrass preparation, Noether normalization, analytic sheaves" ∧
  sourceTheoremStatement.theoremObject = "Every germ of an analytic set admits a local parametrization by a finite cover of analytic maps from open subsets of complex Euclidean space"

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  rfl

end GermsAnalyticSetsLocalParametrizationCanonicalLaneLean
end HautevilleHouse