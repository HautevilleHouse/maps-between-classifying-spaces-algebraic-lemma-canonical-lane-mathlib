import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure MapsBetweenClassifyingSpacesProof where
  sourceClassifyingSpace : ClassifyingSpaceStructure
  targetClassifyingSpace : ClassifyingSpaceStructure
  homomorphism : sourceClassifyingSpace.group → targetClassifyingSpace.group
  inducedMapContinuous : Prop
  inducedMapPreservesHomotopyClass : Prop
  barConstructionCompatible : Prop
  universalBundlePullback : Prop

def MapsBetweenClassifyingSpacesProofClosed (P : MapsBetweenClassifyingSpacesProof) : Prop :=
  P.inducedMapContinuous ∧ P.inducedMapPreservesHomotopyClass ∧ P.barConstructionCompatible ∧ P.universalBundlePullback

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse