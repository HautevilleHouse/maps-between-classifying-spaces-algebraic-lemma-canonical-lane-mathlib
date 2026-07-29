import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemma

structure ClassifyingSpace where
  carrier : Type u
  topologicalGroup : TopologicalSpace carrier
  groupStructure : Group carrier
  continuousGroup : ContinuousMul carrier
  principalBundleClassified : Prop

def classifyingSpaceEquiv (B E : ClassifyingSpace) : Prop :=
  Nonempty (ContinuousMap.HomotopyEquiv B.carrier E.carrier)

structure AdmittedClassifyingObject where
  space : ClassifyingSpace
  modTwoCohomology : Prop
  modTwoCohomologyAlternate : Prop
  modTwoCohomologyAlternateTerm : modTwoCohomologyAlternate

def MapWitnessClosed (O : AdmittedClassifyingObject) : Prop :=
  O.modTwoCohomologyAlternate

end MapsBetweenClassifyingSpacesAlgebraicLemma
end HautevilleHouse
