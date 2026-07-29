import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure ClassifyingSpaceFunctorsPackage where
  functorType : Type u → Type v
  naturalTransformationProperty : Prop
  compositionCompatibility : Prop
  identityPreservation : Prop

structure ClassifyingSpaceFunctorsEvidence (F : ClassifyingSpaceFunctorsPackage) where
  naturalTransformationPropertyClosed : F.naturalTransformationProperty
  compositionCompatibilityClosed : F.compositionCompatibility
  identityPreservationClosed : F.identityPreservation

def ClassifyingSpaceFunctorsClosed (F : ClassifyingSpaceFunctorsPackage) : Prop :=
  F.naturalTransformationProperty ∧ F.compositionCompatibility ∧ F.identityPreservation

theorem classifying_space_functors_closed_from_evidence
    (F : ClassifyingSpaceFunctorsPackage) (E : ClassifyingSpaceFunctorsEvidence F) :
    ClassifyingSpaceFunctorsClosed F := by
  exact And.intro E.naturalTransformationPropertyClosed
    (And.intro E.compositionCompatibilityClosed E.identityPreservationClosed)

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse