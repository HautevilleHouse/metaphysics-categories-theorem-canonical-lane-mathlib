import MetaphysicsCategoriesTheoremCanonicalLaneLean.PredicationGate

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure CategoriesCanonicalFormPackage (A : CategoriesAdmittedObject) where
  genusDifferentiae : Prop
  definitionByCategories : Prop
  essentialPredication : Prop
  accidentalPredication : Prop

structure CategoriesCanonicalFormEvidence {A : CategoriesAdmittedObject}
    (C : CategoriesCanonicalFormPackage A) where
  genusDifferentiaeClosed : C.genusDifferentiae
  definitionByCategoriesClosed : C.definitionByCategories
  essentialPredicationClosed : C.essentialPredication
  accidentalPredicationClosed : C.accidentalPredication

def CategoriesCanonicalFormClosed {A : CategoriesAdmittedObject}
    (C : CategoriesCanonicalFormPackage A) : Prop :=
  C.genusDifferentiae ∧ C.definitionByCategories ∧
  C.essentialPredication ∧ C.accidentalPredication

theorem categories_canonical_form_closed_from_evidence
    {A : CategoriesAdmittedObject} (C : CategoriesCanonicalFormPackage A)
    (E : CategoriesCanonicalFormEvidence C) : CategoriesCanonicalFormClosed C := by
  exact And.intro E.genusDifferentiaeClosed
    (And.intro E.definitionByCategoriesClosed
      (And.intro E.essentialPredicationClosed E.accidentalPredicationClosed))

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
