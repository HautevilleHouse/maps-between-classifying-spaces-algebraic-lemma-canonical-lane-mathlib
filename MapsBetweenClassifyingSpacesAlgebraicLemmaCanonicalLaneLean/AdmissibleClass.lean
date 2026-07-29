import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure AdmissibleObject where
  sourceGroup : Type u
  targetGroup : Type v
  sourceTopology : TopologicalSpace sourceGroup
  targetTopology : TopologicalSpace targetGroup
  continuousHom : sourceGroup → targetGroup
  homIsContinuous : Prop
  inducedMapWellDefined : Prop
  conclusion : homIsContinuous ∧ inducedMapWellDefined

structure AdmissibleClass where
  object : AdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse