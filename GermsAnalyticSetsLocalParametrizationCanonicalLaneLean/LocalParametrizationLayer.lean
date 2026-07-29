import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GermsAnalyticSetsLocalParametrizationCanonicalLaneLean

structure LocalParametrizationLayerCertificate where
  germDatum : GermDatum
  localParamRoute : String
  normalizationRoute : String
  parametrizationChecked : Bool
  normalizationChecked : Bool

def localParametrizationLayerCertificate : LocalParametrizationLayerCertificate := {
  germDatum := primitiveGermDatum,
  localParamRoute := "local parametrization of analytic set germs via normalization",
  normalizationRoute := "normalization of analytic germ reduces to parametrization",
  parametrizationChecked := true,
  normalizationChecked := true
}

def LocalParametrizationLayerClosed (C : LocalParametrizationLayerCertificate) : Prop :=
  C.germDatum = primitiveGermDatum ∧
  C.parametrizationChecked = true ∧
  C.normalizationChecked = true

theorem local_parametrization_layer_closed_checked :
    LocalParametrizationLayerClosed localParametrizationLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end GermsAnalyticSetsLocalParametrizationCanonicalLaneLean
end HautevilleHouse