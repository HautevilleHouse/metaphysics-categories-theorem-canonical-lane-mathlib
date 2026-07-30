import MetaphysicsCategoriesTheoremCanonicalLaneLean.CategoriesCanonicalForm

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure CoincidentiaOppositorumPackage {A : CategoriesAdmittedObject}
    {C : CategoriesCanonicalFormPackage A} (Z : CoincidentiaOppositorumPackage) where
  substanceOpposition : Prop
  accidentOpposition : Prop
  coincidentiaAchieved : Prop
  identityOfIndiscernibles : Prop

structure CoincidentiaOppositorumEvidence {A : CategoriesAdmittedObject}
    {C : CategoriesCanonicalFormPackage A} (Z : CoincidentiaOppositorumPackage) where
  substanceOppositionClosed : Z.substanceOpposition
  accidentOppositionClosed : Z.accidentOpposition
  coincidentiaAchievedClosed : Z.coincidentiaAchieved
  identityOfIndiscerniblesClosed : Z.identityOfIndiscernibles

def CoincidentiaOppositorumClosed (Z : CoincidentiaOppositorumPackage) : Prop :=
  Z.substanceOpposition ∧ Z.accidentOpposition ∧
  Z.coincidentiaAchieved ∧ Z.identityOfIndiscernibles

theorem coincidentia_oppositorum_closed_from_evidence
    (Z : CoincidentiaOppositorumPackage) (E : CoincidentiaOppositorumEvidence Z) :
    CoincidentiaOppositorumClosed Z := by
  exact And.intro E.substanceOppositionClosed
    (And.intro E.accidentOppositionClosed
      (And.intro E.coincidentiaAchievedClosed E.identityOfIndiscerniblesClosed))

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
