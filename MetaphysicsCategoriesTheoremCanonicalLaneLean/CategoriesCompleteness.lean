import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure CategoriesCompletenessPackage {S : SubstancePackage} {A : AccidentPackage S}
    (P : PredicationPackage S A) (D : OntologicalDependencePackage P) where
  coverageAllBeings : Prop
  noOverlapBetweenCategories : Prop
  tenCategoriesExhaustive : Prop
  eachAccidentUniqueGenus : Prop
  coverageAllBeingsTerm : coverageAllBeings
  noOverlapBetweenCategoriesTerm : noOverlapBetweenCategories
  tenCategoriesExhaustiveTerm : tenCategoriesExhaustive
  eachAccidentUniqueGenusTerm : eachAccidentUniqueGenus

structure CategoriesCompletenessEvidence {S : SubstancePackage} {A : AccidentPackage S}
    {P : PredicationPackage S A} {D : OntologicalDependencePackage P}
    (C : CategoriesCompletenessPackage P D) where
  coverageAllBeingsClosed : C.coverageAllBeings
  noOverlapBetweenCategoriesClosed : C.noOverlapBetweenCategories
  tenCategoriesExhaustiveClosed : C.tenCategoriesExhaustive
  eachAccidentUniqueGenusClosed : C.eachAccidentUniqueGenus

def CategoriesCompletenessClosed {S : SubstancePackage} {A : AccidentPackage S}
    {P : PredicationPackage S A} {D : OntologicalDependencePackage P}
    (C : CategoriesCompletenessPackage P D) : Prop :=
  C.coverageAllBeings ∧ C.noOverlapBetweenCategories ∧
  C.tenCategoriesExhaustive ∧ C.eachAccidentUniqueGenus

theorem categories_completeness_closed_from_evidence {S : SubstancePackage} {A : AccidentPackage S}
    {P : PredicationPackage S A} {D : OntologicalDependencePackage P}
    (C : CategoriesCompletenessPackage P D) (E : CategoriesCompletenessEvidence C) :
    CategoriesCompletenessClosed C := by
  exact And.intro E.coverageAllBeingsClosed
    (And.intro E.noOverlapBetweenCategoriesClosed
      (And.intro E.tenCategoriesExhaustiveClosed E.eachAccidentUniqueGenusClosed))

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse