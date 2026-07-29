import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure CohomologyRingMapsPackage where
  cohomologyRingType : Type u → Type v
  ringHomomorphismProperty : Prop
  degreePreservation : Prop
  cupProductCompatibility : Prop
  inducedByClassifyingMap : Prop

structure CohomologyRingMapsEvidence (C : CohomologyRingMapsPackage) where
  ringHomomorphismPropertyClosed : C.ringHomomorphismProperty
  degreePreservationClosed : C.degreePreservation
  cupProductCompatibilityClosed : C.cupProductCompatibility
  inducedByClassifyingMapClosed : C.inducedByClassifyingMap

def CohomologyRingMapsClosed (C : CohomologyRingMapsPackage) : Prop :=
  C.ringHomomorphismProperty ∧ C.degreePreservation ∧ C.cupProductCompatibility ∧ C.inducedByClassifyingMap

theorem cohomology_ring_maps_closed_from_evidence
    (C : CohomologyRingMapsPackage) (E : CohomologyRingMapsEvidence C) :
    CohomologyRingMapsClosed C := by
  exact And.intro E.ringHomomorphismPropertyClosed
    (And.intro E.degreePreservationClosed
      (And.intro E.cupProductCompatibilityClosed E.inducedByClassifyingMapClosed))

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse