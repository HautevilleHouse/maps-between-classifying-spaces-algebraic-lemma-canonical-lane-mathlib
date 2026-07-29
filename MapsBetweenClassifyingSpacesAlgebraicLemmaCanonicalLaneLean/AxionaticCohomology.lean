import HautevilleHouse.MapsBetweenClassifyingSpacesAlgebraicLemma.ClassifyingSpaceObjects
import HautevilleHouse.MapsBetweenClassifyingSpacesAlgebraicLemma.StiefelWhitneyClasses

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemma

structure CohomologyAxiomsPackage {B : ClassifyingSpace} (S : StiefelWhitneyPackage B) where
  modTwoCohomologyIsRing : Prop
  naturalityUnderPullback : Prop
  exactnessInCofibration : Prop
  homotopyInvariance : Prop
  cupProductAnticommutative : Prop

structure CohomologyAxiomsEvidence {B : ClassifyingSpace} {S : StiefelWhitneyPackage B}
    (C : CohomologyAxiomsPackage S) where
  modTwoCohomologyIsRingClosed : C.modTwoCohomologyIsRing
  naturalityUnderPullbackClosed : C.naturalityUnderPullback
  exactnessInCofibrationClosed : C.exactnessInCofibration
  homotopyInvarianceClosed : C.homotopyInvariance
  cupProductAnticommutativeClosed : C.cupProductAnticommutative

def CohomologyAxiomsClosed {B : ClassifyingSpace} {S : StiefelWhitneyPackage B}
    (C : CohomologyAxiomsPackage S) : Prop :=
  C.modTwoCohomologyIsRing ∧ C.naturalityUnderPullback ∧
  C.exactnessInCofibration ∧ C.homotopyInvariance ∧ C.cupProductAnticommutative

theorem cohomology_axioms_closed_from_evidence
    {B : ClassifyingSpace} {S : StiefelWhitneyPackage B} (C : CohomologyAxiomsPackage S)
    (E : CohomologyAxiomsEvidence C) : CohomologyAxiomsClosed C := by
  exact And.intro E.modTwoCohomologyIsRingClosed
    (And.intro E.naturalityUnderPullbackClosed
      (And.intro E.exactnessInCofibrationClosed
        (And.intro E.homotopyInvarianceClosed E.cupProductAnticommutativeClosed)))

end MapsBetweenClassifyingSpacesAlgebraicLemma
end HautevilleHouse
