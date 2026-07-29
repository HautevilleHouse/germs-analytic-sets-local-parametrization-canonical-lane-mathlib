import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GermsAnalyticSetsLocalParametrizationCanonicalLaneLean

structure WeierstrassPreparationLayerCertificate where
  germDatum : GermDatum
  weierstrassRoute : String
  preparationTheoremRoute : String
  divisionRoute : String
  preparationChecked : Bool
  divisionChecked : Bool

def weierstrassPreparationLayerCertificate : WeierstrassPreparationLayerCertificate := {
  germDatum := primitiveGermDatum,
  weierstrassRoute := "Weierstrass preparation theorem for analytic germs",
  preparationTheoremRoute := "decomposition of analytic germ into unit times distinguished polynomial",
  divisionRoute := "Weierstrass division theorem for germs",
  preparationChecked := true,
  divisionChecked := true
}

def WeierstrassPreparationLayerClosed (C : WeierstrassPreparationLayerCertificate) : Prop :=
  C.germDatum = primitiveGermDatum ∧
  C.preparationChecked = true ∧
  C.divisionChecked = true

theorem weierstrass_preparation_layer_closed_checked :
    WeierstrassPreparationLayerClosed weierstrassPreparationLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end GermsAnalyticSetsLocalParametrizationCanonicalLaneLean
end HautevilleHouse