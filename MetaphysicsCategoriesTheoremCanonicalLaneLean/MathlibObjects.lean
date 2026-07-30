import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure MetaphysicsSpace where
  carrier : Type
  categoryStructure : Prop

structure MetaphysicsAdmittedObject where
  space : MetaphysicsSpace
  categoricalFoundation : Prop
  universalityCondition : Prop
  conclusion : categoricalFoundation ∧ universalityCondition

structure MetaphysicsEndgameState where
  object : MetaphysicsAdmittedObject

def MetaphysicsWitnessClosed (O : MetaphysicsAdmittedObject) : Prop :=
  O.categoricalFoundation ∧ O.universalityCondition

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse