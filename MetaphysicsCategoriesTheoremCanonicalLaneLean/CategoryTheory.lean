import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure CategoryTheoryPackage where
  category : Type u
  objects : Type v
  morphisms : objects -> objects -> Type w
  identity : (x : objects) -> morphisms x x
  composition : {x y z : objects} -> morphisms x y -> morphisms y z -> morphisms x z
  associativity : Prop
  identityLawLeft : Prop
  identityLawRight : Prop

structure CategoryTheoryEvidence (C : CategoryTheoryPackage) where
  associativityClosed : C.associativity
  identityLawLeftClosed : C.identityLawLeft
  identityLawRightClosed : C.identityLawRight

def CategoryTheoryClosed (C : CategoryTheoryPackage) : Prop :=
  C.associativity ∧ C.identityLawLeft ∧ C.identityLawRight

theorem category_theory_closed_from_evidence (C : CategoryTheoryPackage)
    (E : CategoryTheoryEvidence C) : CategoryTheoryClosed C := by
  exact And.intro E.associativityClosed
    (And.intro E.identityLawLeftClosed E.identityLawRightClosed)

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse