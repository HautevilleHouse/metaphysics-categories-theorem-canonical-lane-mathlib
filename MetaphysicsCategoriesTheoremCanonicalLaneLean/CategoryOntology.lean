import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure CategoryTheoryPackage where
  objectType : Type u
  morphismType : Type v
  composition : morphismType -> morphismType -> morphismType -> Prop
  identityMorphism : objectType -> morphismType
  associativity : Prop
  identityLaw : Prop
  compositionDefined : Prop

structure CategoryTheoryEvidence (C : CategoryTheoryPackage) where
  associativityClosed : C.associativity
  identityLawClosed : C.identityLaw
  compositionDefinedClosed : C.compositionDefined

def CategoryTheoryClosed (C : CategoryTheoryPackage) : Prop :=
  C.associativity ∧ C.identityLaw ∧ C.compositionDefined

theorem category_theory_closed_from_evidence (C : CategoryTheoryPackage)
    (E : CategoryTheoryEvidence C) : CategoryTheoryClosed C := by
  exact And.intro E.associativityClosed (And.intro E.identityLawClosed E.compositionDefinedClosed)

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse