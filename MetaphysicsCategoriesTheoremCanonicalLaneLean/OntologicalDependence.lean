import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure OntologicalDependencePackage {S : SubstancePackage} {A : AccidentPackage S} (P : PredicationPackage S A) where
  accidentDependsOnSubstance : Prop
  substanceDoesNotDependOnAccident : Prop
  dependenceTransitive : Prop
  dependenceAsymmetric : Prop
  accidentDependsOnSubstanceTerm : accidentDependsOnSubstance
  substanceDoesNotDependOnAccidentTerm : substanceDoesNotDependOnAccident
  dependenceTransitiveTerm : dependenceTransitive
  dependenceAsymmetricTerm : dependenceAsymmetric

structure OntologicalDependenceEvidence {S : SubstancePackage} {A : AccidentPackage S}
    {P : PredicationPackage S A} (D : OntologicalDependencePackage P) where
  accidentDependsOnSubstanceClosed : D.accidentDependsOnSubstance
  substanceDoesNotDependOnAccidentClosed : D.substanceDoesNotDependOnAccident
  dependenceTransitiveClosed : D.dependenceTransitive
  dependenceAsymmetricClosed : D.dependenceAsymmetric

def OntologicalDependenceClosed {S : SubstancePackage} {A : AccidentPackage S}
    {P : PredicationPackage S A} (D : OntologicalDependencePackage P) : Prop :=
  D.accidentDependsOnSubstance ∧ D.substanceDoesNotDependOnAccident ∧
  D.dependenceTransitive ∧ D.dependenceAsymmetric

theorem ontological_dependence_closed_from_evidence {S : SubstancePackage} {A : AccidentPackage S}
    {P : PredicationPackage S A} (D : OntologicalDependencePackage P)
    (E : OntologicalDependenceEvidence D) : OntologicalDependenceClosed D := by
  exact And.intro E.accidentDependsOnSubstanceClosed
    (And.intro E.substanceDoesNotDependOnAccidentClosed
      (And.intro E.dependenceTransitiveClosed E.dependenceAsymmetricClosed))

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse