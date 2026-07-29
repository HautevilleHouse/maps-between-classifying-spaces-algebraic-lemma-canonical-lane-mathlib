import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure MapsBetweenClassifyingSpacesPackage where
  sourceSpace : Type u
  targetSpace : Type v
  map : sourceSpace → targetSpace
  homotopyClassProperty : Prop
  inducedMapOnCohomology : Prop
  suspensionCompatibility : Prop
  representativeChoice : Prop

structure MapsBetweenClassifyingSpacesEvidence (P : MapsBetweenClassifyingSpacesPackage) where
  homotopyClassPropertyClosed : P.homotopyClassProperty
  inducedMapOnCohomologyClosed : P.inducedMapOnCohomology
  suspensionCompatibilityClosed : P.suspensionCompatibility
  representativeChoiceClosed : P.representativeChoice

def MapsBetweenClassifyingSpacesClosed (P : MapsBetweenClassifyingSpacesPackage) : Prop :=
  P.homotopyClassProperty ∧ P.inducedMapOnCohomology ∧ P.suspensionCompatibility ∧ P.representativeChoice

theorem maps_between_classifying_spaces_closed_from_evidence
    (P : MapsBetweenClassifyingSpacesPackage) (E : MapsBetweenClassifyingSpacesEvidence P) :
    MapsBetweenClassifyingSpacesClosed P := by
  exact And.intro E.homotopyClassPropertyClosed
    (And.intro E.inducedMapOnCohomologyClosed
      (And.intro E.suspensionCompatibilityClosed E.representativeChoiceClosed))

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse