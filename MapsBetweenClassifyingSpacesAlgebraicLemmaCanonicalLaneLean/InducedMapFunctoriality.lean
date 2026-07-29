import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure InducedMapFunctorialityPackage where
  sourceGroup : Type u
  targetGroup : Type v
  groupHomomorphism : sourceGroup → targetGroup
  classifyingMapDefined : Prop
  compositionPreserved : Prop
  identityPreserved : Prop

structure InducedMapFunctorialityEvidence (C : InducedMapFunctorialityPackage) where
  classifyingMapDefinedClosed : C.classifyingMapDefined
  compositionPreservedClosed : C.compositionPreserved
  identityPreservedClosed : C.identityPreserved

def InducedMapFunctorialityClosed (C : InducedMapFunctorialityPackage) : Prop :=
  C.classifyingMapDefined ∧ C.compositionPreserved ∧ C.identityPreserved

theorem induced_map_functoriality_closed_from_evidence (C : InducedMapFunctorialityPackage)
    (E : InducedMapFunctorialityEvidence C) : InducedMapFunctorialityClosed C := by
  exact And.intro E.classifyingMapDefinedClosed
    (And.intro E.compositionPreservedClosed E.identityPreservedClosed)

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse