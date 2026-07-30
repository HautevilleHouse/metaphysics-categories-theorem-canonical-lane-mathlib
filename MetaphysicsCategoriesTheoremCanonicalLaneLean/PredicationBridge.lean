import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure PredicationBridgePackage where
  subject : Type u
  predicate : Type v
  proposition : Type w
  truthValue : Prop
  inherence : subject -> predicate -> Prop
  predication : subject -> predicate -> proposition -> truthValue

structure PredicationBridgeEvidence (P : PredicationBridgePackage) where
  inherenceClosed : ∀ (s : P.subject) (p : P.predicate), P.inherence s p
  predicationClosed : ∀ (s : P.subject) (p : P.predicate) (q : P.proposition), P.predication s p q -> P.truthValue

def PredicationBridgeClosed (P : PredicationBridgePackage) : Prop :=
  (∀ (s : P.subject) (p : P.predicate), P.inherence s p) ∧
  (∀ (s : P.subject) (p : P.predicate) (q : P.proposition), P.predication s p q -> P.truthValue)

theorem predication_bridge_closed_from_evidence (P : PredicationBridgePackage)
    (E : PredicationBridgeEvidence P) : PredicationBridgeClosed P := by
  exact And.intro E.inherenceClosed E.predicationClosed

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse