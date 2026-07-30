import canonicalLaneMathlib.AdmissibleClass
import MetaphysicsCategoriesTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

def ConstrainedMetaphysicsCategoriesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_metaphysics_categories_endgame (A : AdmissibleClass) :
    ConstrainedMetaphysicsCategoriesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse