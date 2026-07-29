import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure ClassifyingSpaceConstructionPackage where
  groupObject : Type u
  topologicalSpace : TopologicalSpace groupObject
  universalBundle : Type v
  totalSpaceContractible : Prop
  baseIsClassifying : Prop
  universalProperty : Prop

structure ClassifyingSpaceConstructionEvidence (C : ClassifyingSpaceConstructionPackage) where
  totalSpaceContractibleClosed : C.totalSpaceContractible
  baseIsClassifyingClosed : C.baseIsClassifying
  universalPropertyClosed : C.universalProperty

def ClassifyingSpaceConstructionClosed (C : ClassifyingSpaceConstructionPackage) : Prop :=
  C.totalSpaceContractible ∧ C.baseIsClassifying ∧ C.universalProperty

theorem classifying_space_construction_closed_from_evidence (C : ClassifyingSpaceConstructionPackage)
    (E : ClassifyingSpaceConstructionEvidence C) : ClassifyingSpaceConstructionClosed C := by
  exact And.intro E.totalSpaceContractibleClosed
    (And.intro E.baseIsClassifyingClosed E.universalPropertyClosed)

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse