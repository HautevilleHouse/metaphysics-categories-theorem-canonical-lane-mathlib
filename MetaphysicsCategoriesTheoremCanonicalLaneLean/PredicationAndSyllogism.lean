import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure PredicationStructurePackage where
  subjectTerm : Type u
  predicateTerm : Type v
  copula : Type w
  subjectDomain : List subjectTerm
  predicateTruthConditions : subjectTerm -> Prop
  copulaSatisfaction : subjectTerm -> predicateTerm -> Prop
  truePredicationDefined : Prop
  falsePredicationDefined : Prop
  contingencyRespected : Prop

structure PredicationStructureEvidence (P : PredicationStructurePackage) where
  truePredicationDefinedClosed : P.truePredicationDefined
  falsePredicationDefinedClosed : P.falsePredicationDefined
  contingencyRespectedClosed : P.contingencyRespected

def PredicationStructureClosed (P : PredicationStructurePackage) : Prop :=
  P.truePredicationDefined ∧ P.falsePredicationDefined ∧ P.contingencyRespected

theorem predication_structure_closed_from_evidence (P : PredicationStructurePackage)
    (E : PredicationStructureEvidence P) : PredicationStructureClosed P := by
  exact And.intro E.truePredicationDefinedClosed (And.intro E.falsePredicationDefinedClosed E.contingencyRespectedClosed)

structure SyllogisticMoodPackage where
  majorPremise : Prop
  minorPremise : Prop
  conclusion : Prop
  middleTerm : Type u
  distribution : middleTerm -> Prop
  figure : Nat
  valid : Prop

structure SyllogisticMoodEvidence (S : SyllogisticMoodPackage) where
  majorPremiseClosed : S.majorPremise
  minorPremiseClosed : S.minorPremise
  conclusionClosed : S.conclusion
  distributionClosed : S.distribution S.middleTerm
  validClosed : S.valid

def SyllogisticMoodClosed (S : SyllogisticMoodPackage) : Prop :=
  S.majorPremise ∧ S.minorPremise ∧ S.conclusion ∧ S.valid

theorem syllogistic_mood_closed_from_evidence (S : SyllogisticMoodPackage)
    (E : SyllogisticMoodEvidence S) : SyllogisticMoodClosed S := by
  exact And.intro E.majorPremiseClosed (And.intro E.minorPremiseClosed (And.intro E.conclusionClosed E.validClosed))

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse