import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure CategoricalStructurePackage where
  substance : Type u
  attribute : Type v
  predicationRelation : Type w
  inherence : Prop
  universality : Prop
  necessaryConnection : Prop

structure CategoricalStructureEvidence (P : CategoricalStructurePackage) where
  inherenceClosed : P.inherence
  universalityClosed : P.universality
  necessaryConnectionClosed : P.necessaryConnection

def CategoricalStructureClosed (P : CategoricalStructurePackage) : Prop :=
  P.inherence ∧ P.universality ∧ P.necessaryConnection

theorem categorical_structure_closed_from_evidence
    (P : CategoricalStructurePackage) (E : CategoricalStructureEvidence P) :
    CategoricalStructureClosed P := by
  exact And.intro E.inherenceClosed
    (And.intro E.universalityClosed E.necessaryConnectionClosed)

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse