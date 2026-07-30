import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure MetaphysicsAdmittedObject where
  carrier : Type
  categoriesStructure : Prop
  categoriesDefined : Prop
  conclusion : categoriesDefined

def MetaphysicsWitnessClosed (O : MetaphysicsAdmittedObject) : Prop :=
  O.categoriesDefined

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse