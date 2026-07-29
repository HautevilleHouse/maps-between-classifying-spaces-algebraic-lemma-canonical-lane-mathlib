import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure ClassifyingSpaceMapPackage where
  sourceGroup : Type u
  targetGroup : Type v
  sourceGroupTopology : TopologicalSpace sourceGroup
  targetGroupTopology : TopologicalSpace targetGroup
  continuousHomomorphism : sourceGroup → targetGroup
  homomorphismProperty : Prop
  inducedMapOnClassifyingSpace : Type w
  homotopyClassWellDefined : Prop

structure ClassifyingSpaceMapEvidence (C : ClassifyingSpaceMapPackage) where
  continuousHomomorphismClosed : C.homomorphismProperty
  inducedMapWellDefinedClosed : C.homotopyClassWellDefined

def ClassifyingSpaceMapClosed (C : ClassifyingSpaceMapPackage) : Prop :=
  C.homomorphismProperty ∧ C.homotopyClassWellDefined

theorem classifying_space_map_closed_from_evidence (C : ClassifyingSpaceMapPackage)
    (E : ClassifyingSpaceMapEvidence C) : ClassifyingSpaceMapClosed C := by
  exact And.intro E.continuousHomomorphismClosed E.inducedMapWellDefinedClosed

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse