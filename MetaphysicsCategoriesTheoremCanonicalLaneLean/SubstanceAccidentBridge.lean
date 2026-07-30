import MetaphysicsCategoriesTheoremCanonicalLaneLean.CategoriesAdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

def bridgeClosed (A : CategoriesAdmittedObject) : Prop :=
  A.primarySubstance ∨ A.secondarySubstance

theorem bridge_from_admissible_class (A : CategoriesAdmittedObject) :
    bridgeClosed A := by
  exact A.categoryClosure

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
