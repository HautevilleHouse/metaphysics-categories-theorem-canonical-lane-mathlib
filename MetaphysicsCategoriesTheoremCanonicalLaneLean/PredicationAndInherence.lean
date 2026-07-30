import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure PredicationPackage (S : SubstancePackage) (A : AccidentPackage S) where
  subjectPredicateRelation : Prop
  inherenceRelation : Prop
  predicationRule : Prop
  inherenceRule : Prop
  subjectPredicateRelationTerm : subjectPredicateRelation
  inherenceRelationTerm : inherenceRelation
  predicationRuleTerm : predicationRule
  inherenceRuleTerm : inherenceRule

structure PredicationEvidence {S : SubstancePackage} {A : AccidentPackage S} (P : PredicationPackage S A) where
  subjectPredicateRelationClosed : P.subjectPredicateRelation
  inherenceRelationClosed : P.inherenceRelation
  predicationRuleClosed : P.predicationRule
  inherenceRuleClosed : P.inherenceRule

def PredicationClosed {S : SubstancePackage} {A : AccidentPackage S} (P : PredicationPackage S A) : Prop :=
  P.subjectPredicateRelation ∧ P.inherenceRelation ∧ P.predicationRule ∧ P.inherenceRule

theorem predication_closed_from_evidence {S : SubstancePackage} {A : AccidentPackage S}
    (P : PredicationPackage S A) (E : PredicationEvidence P) : PredicationClosed P := by
  exact And.intro E.subjectPredicateRelationClosed
    (And.intro E.inherenceRelationClosed
      (And.intro E.predicationRuleClosed E.inherenceRuleClosed))

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse