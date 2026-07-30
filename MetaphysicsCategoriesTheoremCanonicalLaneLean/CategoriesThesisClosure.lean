import MetaphysicsCategoriesTheoremCanonicalLaneLean.CoincidentiaOppositorum

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

def ConstrainedCategoriesClosure (A : CategoriesAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_categories_endgame (A : CategoriesAdmittedObject) :
    ConstrainedCategoriesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
