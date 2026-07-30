import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure TenCategoriesPackage where
  substance : Prop
  quantity : Prop
  quality : Prop
  relation : Prop
  place : Prop
  time : Prop
  position : Prop
  state : Prop
  action : Prop
  affection : Prop

structure TenCategoriesEvidence (T : TenCategoriesPackage) where
  substanceClosed : T.substance
  quantityClosed : T.quantity
  qualityClosed : T.quality
  relationClosed : T.relation
  placeClosed : T.place
  timeClosed : T.time
  positionClosed : T.position
  stateClosed : T.state
  actionClosed : T.action
  affectionClosed : T.affection

def TenCategoriesClosed (T : TenCategoriesPackage) : Prop :=
  T.substance ∧ T.quantity ∧ T.quality ∧ T.relation ∧
  T.place ∧ T.time ∧ T.position ∧ T.state ∧
  T.action ∧ T.affection

theorem ten_categories_closed_from_evidence (T : TenCategoriesPackage) (E : TenCategoriesEvidence T) : TenCategoriesClosed T := by
  refine And.intro E.substanceClosed (And.intro E.quantityClosed (And.intro E.qualityClosed (And.intro E.relationClosed
    (And.intro E.placeClosed (And.intro E.timeClosed (And.intro E.positionClosed (And.intro E.stateClosed
      (And.intro E.actionClosed E.affectionClosed))))))))

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse