import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure CategoriesAdmittedObject where
  substance : Type u
  categories : List (substance → Prop)
  accident : substance → Prop
  primarySubstance : Prop
  secondarySubstance : Prop
  categoryClosure : primarySubstance ∨ secondarySubstance

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
