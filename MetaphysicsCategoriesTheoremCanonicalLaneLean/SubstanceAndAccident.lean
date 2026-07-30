import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure SubstancePackage where
  primarySubstance : Type u
  secondarySubstance : Type v
  individual : Prop
  universal : Prop
  individualTerm : individual
  universalTerm : universal

structure AccidentPackage (S : SubstancePackage) where
  quality : Prop
  quantity : Prop
  relation : Prop
  action : Prop
  passion : Prop
  when : Prop
  where_ : Prop
  habitus : Prop
  qualityTerm : quality
  quantityTerm : quantity
  relationTerm : relation
  actionTerm : action
  passionTerm : passion
  whenTerm : when
  whereTerm : where_
  habitusTerm : habitus

structure SubstanceEvidence (S : SubstancePackage) where
  individualClosed : S.individual
  universalClosed : S.universal

def SubstanceClosed (S : SubstancePackage) : Prop :=
  S.individual ∧ S.universal

theorem substance_closed_from_evidence (S : SubstancePackage) (E : SubstanceEvidence S) :
    SubstanceClosed S := by
  exact And.intro E.individualClosed E.universalClosed

structure AccidentEvidence {S : SubstancePackage} (A : AccidentPackage S) where
  allCategoriesClosed : A.quality ∧ A.quantity ∧ A.relation ∧ A.action ∧ A.passion ∧ A.when ∧ A.where_ ∧ A.habitus

def AccidentClosed {S : SubstancePackage} (A : AccidentPackage S) : Prop :=
  A.quality ∧ A.quantity ∧ A.relation ∧ A.action ∧ A.passion ∧ A.when ∧ A.where_ ∧ A.habitus

theorem accident_closed_from_evidence {S : SubstancePackage} (A : AccidentPackage S) (E : AccidentEvidence A) :
    AccidentClosed A := by
  exact E.allCategoriesClosed

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse