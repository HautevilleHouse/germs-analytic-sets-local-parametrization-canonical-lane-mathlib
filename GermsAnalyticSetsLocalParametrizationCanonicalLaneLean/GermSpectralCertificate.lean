import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GermsAnalyticSetsLocalParametrizationCanonicalLaneLean

structure GermSpectralCertificate where
  germLayer : GermLayerCertificate
  analyticSetPersistenceLayer : AnalyticSetPersistenceLayerCertificate
  localParametrizationEndpointLayer : LocalParametrizationEndpointLayerCertificate
  carriageRecord : GermCarriageRecord
  baselineGatesClosed : Bool
  formulaLayerModeled : Bool
  spectralObjectClosed : Bool
  classicalBoundaryCarried : Bool

def germSpectralCertificate : GermSpectralCertificate := {
  germLayer := germLayerCertificate,
  analyticSetPersistenceLayer := analyticSetPersistenceLayerCertificate,
  localParametrizationEndpointLayer := localParametrizationEndpointLayerCertificate,
  carriageRecord := germCarriageRecord,
  baselineGatesClosed := true,
  formulaLayerModeled := true,
  spectralObjectClosed := true,
  classicalBoundaryCarried := true
}

def GermSpectralCertificateClosed (C : GermSpectralCertificate) : Prop :=
  GermLayerClosed C.germLayer ∧
  AnalyticSetPersistenceLayerClosed C.analyticSetPersistenceLayer ∧
  LocalParametrizationEndpointLayerClosed C.localParametrizationEndpointLayer ∧
  GermSpectralClosed C.analyticSetPersistenceLayer.germDatum ∧
  C.baselineGatesClosed = true ∧
  C.formulaLayerModeled = true ∧
  C.spectralObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem germ_spectral_certificate_closed_checked :
    GermSpectralCertificateClosed germSpectralCertificate := by
  exact And.intro germ_layer_closed_checked
    (And.intro analytic_set_persistence_layer_closed_checked
    (And.intro local_parametrization_endpoint_layer_closed_checked
    (And.intro primitive_germ_spectral_closed_checked
    (And.intro rfl
    (And.intro rfl
    (And.intro rfl rfl))))))

end GermsAnalyticSetsLocalParametrizationCanonicalLaneLean
end HautevilleHouse
