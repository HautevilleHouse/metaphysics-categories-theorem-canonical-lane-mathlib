import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure RelationalContextPackage where
  relationType : Type u
  arbiterSet : Type v
  subjectObject : Type w
  objectTerminus : Type x
  proportionality : Prop
  reciprocity : Prop
  simultaneity : Prop

structure RelationalContextEvidence (R : RelationalContextPackage) where
  proportionalityClosed : R.proportionality
  reciprocityClosed : R.reciprocity
  simultaneityClosed : R.simultaneity

def RelationalContextClosed (R : RelationalContextPackage) : Prop :=
  R.proportionality ∧ R.reciprocity ∧ R.simultaneity

theorem relational_context_closed_from_evidence (R : RelationalContextPackage)
    (E : RelationalContextEvidence R) : RelationalContextClosed R := by
  exact And.intro E.proportionalityClosed (And.intro E.reciprocityClosed E.simultaneityClosed)

structure ActionAndPassionPackage where
  activePowerType : Type u
  passivePowerType : Type v
  change : Type w
  agentRelation : activePowerType -> change -> Prop
  patientRelation : passivePowerType -> change -> Prop
  initiation : Prop
  reception : Prop
  unityOfAction : Prop

structure ActionAndPassionEvidence (A : ActionAndPassionPackage) where
  initiationClosed : A.initiation
  receptionClosed : A.reception
  unityOfActionClosed : A.unityOfAction

def ActionAndPassionClosed (A : ActionAndPassionPackage) : Prop :=
  A.initiation ∧ A.reception ∧ A.unityOfAction

theorem action_and_passion_closed_from_evidence (A : ActionAndPassionPackage)
    (E : ActionAndPassionEvidence A) : ActionAndPassionClosed A := by
  exact And.intro E.initiationClosed (And.intro E.receptionClosed E.unityOfActionClosed)

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse