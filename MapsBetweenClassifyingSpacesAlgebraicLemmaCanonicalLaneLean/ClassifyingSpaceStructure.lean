import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure ClassifyingSpaceStructure where
  group : Type u
  [topologicalGroup : TopologicalGroup group]
  classifyingSpace : Type v
  [topologicalSpace : TopologicalSpace classifyingSpace]
  universalBundle : Type w
  bundleProjection : universalBundle → classifyingSpace
  contractibleTotalSpace : Prop
  principalAction : Prop
  barConstruction : Prop
  homotopyType : Prop

def ClassifyingSpaceStructureClosed (C : ClassifyingSpaceStructure) : Prop :=
  C.contractibleTotalSpace ∧ C.principalAction ∧ C.barConstruction ∧ C.homotopyType

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse