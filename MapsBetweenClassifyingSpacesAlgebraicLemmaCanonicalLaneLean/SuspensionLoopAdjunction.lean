import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure SuspensionLoopAdjunctionPackage where
  suspensionFunctor : Type u → Type u
  loopFunctor : Type u → Type u
  adjunctionProperty : Prop
  unitCounitProperty : Prop
  classifyingSpaceCompatibility : Prop

structure SuspensionLoopAdjunctionEvidence (A : SuspensionLoopAdjunctionPackage) where
  adjunctionPropertyClosed : A.adjunctionProperty
  unitCounitPropertyClosed : A.unitCounitProperty
  classifyingSpaceCompatibilityClosed : A.classifyingSpaceCompatibility

def SuspensionLoopAdjunctionClosed (A : SuspensionLoopAdjunctionPackage) : Prop :=
  A.adjunctionProperty ∧ A.unitCounitProperty ∧ A.classifyingSpaceCompatibility

theorem suspension_loop_adjunction_closed_from_evidence
    (A : SuspensionLoopAdjunctionPackage) (E : SuspensionLoopAdjunctionEvidence A) :
    SuspensionLoopAdjunctionClosed A := by
  exact And.intro E.adjunctionPropertyClosed
    (And.intro E.unitCounitPropertyClosed E.classifyingSpaceCompatibilityClosed)

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse