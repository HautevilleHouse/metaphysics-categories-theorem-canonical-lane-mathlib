import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure SubstanceAndAttributesPackage where
  substanceType : Type u
  attributeType : Type v
  inherenceRelation : substanceType -> attributeType -> Prop
  essentialAttributes : substanceType -> List attributeType
  accidentalAttributes : substanceType -> List attributeType
  substanceIndividuation : Prop
  attributeInseparability : Prop
  essentialAccidentalDistinction : Prop

structure SubstanceAndAttributesEvidence (S : SubstanceAndAttributesPackage) where
  substanceIndividuationClosed : S.substanceIndividuation
  attributeInseparabilityClosed : S.attributeInseparability
  essentialAccidentalDistinctionClosed : S.essentialAccidentalDistinction

def SubstanceAndAttributesClosed (S : SubstanceAndAttributesPackage) : Prop :=
  S.substanceIndividuation ∧ S.attributeInseparability ∧ S.essentialAccidentalDistinction

theorem substance_and_attributes_closed_from_evidence (S : SubstanceAndAttributesPackage)
    (E : SubstanceAndAttributesEvidence S) : SubstanceAndAttributesClosed S := by
  exact And.intro E.substanceIndividuationClosed (And.intro E.attributeInseparabilityClosed E.essentialAccidentalDistinctionClosed)

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse