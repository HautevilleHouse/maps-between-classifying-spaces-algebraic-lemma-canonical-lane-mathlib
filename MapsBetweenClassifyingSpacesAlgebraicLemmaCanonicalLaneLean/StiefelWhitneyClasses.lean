import HautevilleHouse.MapsBetweenClassifyingSpacesAlgebraicLemma.ClassifyingSpaceObjects

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemma

structure StiefelWhitneyPackage (B : ClassifyingSpace) where
  cohomologyRing : Type u
  totalStiefelWhitneyClass : cohomologyRing
  individualClasses : Nat → cohomologyRing
  wZeroIsOne : totalStiefelWhitneyClass = 1
  wOneDeterminant : individualClasses 1 = 0

structure StiefelWhitneyEvidence {B : ClassifyingSpace} (S : StiefelWhitneyPackage B) where
  wZeroIsOneClosed : S.wZeroIsOne
  wOneDeterminantClosed : S.wOneDeterminant

def StiefelWhitneyClosed {B : ClassifyingSpace} (S : StiefelWhitneyPackage B) : Prop :=
  S.wZeroIsOne ∧ S.wOneDeterminant

theorem stiefel_whitney_closed_from_evidence
    {B : ClassifyingSpace} (S : StiefelWhitneyPackage B) (E : StiefelWhitneyEvidence S) :
    StiefelWhitneyClosed S := by
  exact And.intro E.wZeroIsOneClosed E.wOneDeterminantClosed

end MapsBetweenClassifyingSpacesAlgebraicLemma
end HautevilleHouse
