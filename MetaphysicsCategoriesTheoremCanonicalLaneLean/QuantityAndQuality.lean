import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure ContinuousQuantityPackage where
  magnitudeType : Type u
  comparabilityRelation : magnitudeType -> magnitudeType -> Prop
  measurability : Prop
  density : Prop
  divisibility : Prop

structure ContinuousQuantityEvidence (Q : ContinuousQuantityPackage) where
  measurabilityClosed : Q.measurability
  densityClosed : Q.density
  divisibilityClosed : Q.divisibility

def ContinuousQuantityClosed (Q : ContinuousQuantityPackage) : Prop :=
  Q.measurability ∧ Q.density ∧ Q.divisibility

theorem continuous_quantity_closed_from_evidence (Q : ContinuousQuantityPackage)
    (E : ContinuousQuantityEvidence Q) : ContinuousQuantityClosed Q := by
  exact And.intro E.measurabilityClosed (And.intro E.densityClosed E.divisibilityClosed)

structure DiscreteQualityPackage where
  qualityType : Type u
  distinctnessRelation : qualityType -> qualityType -> Prop
  qualitativeDistinction : Prop
  exclusiveInstantiation : Prop
  gradation : Prop

structure DiscreteQualityEvidence (Q : DiscreteQualityPackage) where
  qualitativeDistinctionClosed : Q.qualitativeDistinction
  exclusiveInstantiationClosed : Q.exclusiveInstantiation
  gradationClosed : Q.gradation

def DiscreteQualityClosed (Q : DiscreteQualityPackage) : Prop :=
  Q.qualitativeDistinction ∧ Q.exclusiveInstantiation ∧ Q.gradation

theorem discrete_quality_closed_from_evidence (Q : DiscreteQualityPackage)
    (E : DiscreteQualityEvidence Q) : DiscreteQualityClosed Q := by
  exact And.intro E.qualitativeDistinctionClosed (And.intro E.exclusiveInstantiationClosed E.gradationClosed)

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse