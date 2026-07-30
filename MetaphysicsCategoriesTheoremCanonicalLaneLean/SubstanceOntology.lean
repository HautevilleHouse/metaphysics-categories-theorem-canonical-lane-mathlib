import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure SubstanceOntologyPackage where
  primarySubstance : Type u
  secondarySubstance : Type v
  individualEntity : Type w
  species : Type w
  genus : Type w
  substratumRelation : primarySubstance -> secondarySubstance -> Prop
  categorization : individualEntity -> species -> genus -> Prop

structure SubstanceOntologyEvidence (S : SubstanceOntologyPackage) where
  substratumRelationClosed : ∀ (p : S.primarySubstance) (s : S.secondarySubstance), S.substratumRelation p s
  categorizationClosed : ∀ (e : S.individualEntity) (sp : S.species) (g : S.genus), S.categorization e sp g

def SubstanceOntologyClosed (S : SubstanceOntologyPackage) : Prop :=
  (∀ (p : S.primarySubstance) (s : S.secondarySubstance), S.substratumRelation p s) ∧
  (∀ (e : S.individualEntity) (sp : S.species) (g : S.genus), S.categorization e sp g)

theorem substance_ontology_closed_from_evidence (S : SubstanceOntologyPackage)
    (E : SubstanceOntologyEvidence S) : SubstanceOntologyClosed S := by
  exact And.intro E.substratumRelationClosed E.categorizationClosed

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse