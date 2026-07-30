import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsCategoriesTheoremCanonicalLaneLean

structure CategoryStructuresPackage where
  categoryKind : Type u
  subcategoryRelation : Prop
  oppositionRelation : Prop
  priorityOrder : Prop
  crossCategoryAnalogy : Prop

structure CategoryStructuresEvidence (C : CategoryStructuresPackage) where
  subcategoryRelationClosed : C.subcategoryRelation
  oppositionRelationClosed : C.oppositionRelation
  priorityOrderClosed : C.priorityOrder
  crossCategoryAnalogyClosed : C.crossCategoryAnalogy

def CategoryStructuresClosed (C : CategoryStructuresPackage) : Prop :=
  C.subcategoryRelation ∧ C.oppositionRelation ∧ C.priorityOrder ∧ C.crossCategoryAnalogy

theorem category_structures_closed_from_evidence (C : CategoryStructuresPackage) (E : CategoryStructuresEvidence C) : CategoryStructuresClosed C := by
  exact And.intro E.subcategoryRelationClosed (And.intro E.oppositionRelationClosed (And.intro E.priorityOrderClosed E.crossCategoryAnalogyClosed))

end MetaphysicsCategoriesTheoremCanonicalLaneLean
end HautevilleHouse