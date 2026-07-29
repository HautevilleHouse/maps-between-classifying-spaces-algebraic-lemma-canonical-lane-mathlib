import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure ClassifyingSpaceData where
  group : Type u
  topologicalGroup : Prop
  classifyingSpace : Type v
  universalBundle : Prop
  classifyingTopology : Prop

def ClassifyingSpaceWitnessClosed (C : ClassifyingSpaceData) : Prop :=
  C.topologicalGroup ∧ C.universalBundle ∧ C.classifyingTopology

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse