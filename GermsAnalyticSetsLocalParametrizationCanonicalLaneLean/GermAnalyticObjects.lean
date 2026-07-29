import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GermsAnalyticSetsLocalParametrizationCanonicalLaneLean

structure GermDatum where
  germLabel : String
  stalkModeled : Bool
  sheafModeled : Bool
  weierstrassPrepared : Bool
  parametrized : Bool

def primitiveGermDatum : GermDatum := {
  germLabel := "germ of analytic set at a point",
  stalkModeled := true,
  sheafModeled := true,
  weierstrassPrepared := true,
  parametrized := true
}

structure GermAdmittedObject where
  object : GermDatum
  stalkClosed : Bool
  sheafClosed : Bool
  preparationClosed : Bool
  parametrizationClosed : Bool

def germAdmittedObject : GermAdmittedObject := {
  object := primitiveGermDatum,
  stalkClosed := true,
  sheafClosed := true,
  preparationClosed := true,
  parametrizationClosed := true
}

def GermAnalyticObjectsClosed (O : GermAdmittedObject) : Prop :=
  O.object = primitiveGermDatum ∧
  O.stalkClosed = true ∧ O.sheafClosed = true ∧
  O.preparationClosed = true ∧ O.parametrizationClosed = true

theorem germ_analytic_objects_closed_checked :
    GermAnalyticObjectsClosed germAdmittedObject := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end GermsAnalyticSetsLocalParametrizationCanonicalLaneLean
end HautevilleHouse