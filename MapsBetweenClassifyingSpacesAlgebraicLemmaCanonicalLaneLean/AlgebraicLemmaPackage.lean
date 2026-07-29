import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure AlgebraicLemmaPackage where
  sourceGroup : Type u
  targetGroup : Type v
  homomorphism : sourceGroup → targetGroup
  inducedMapOnClassifyingSpaces : Prop
  naturality : Prop
  functoriality : Prop
  homotopyEquivalencePreserved : Prop

def AlgebraicLemmaPackageClosed (L : AlgebraicLemmaPackage) : Prop :=
  L.inducedMapOnClassifyingSpaces ∧ L.naturality ∧ L.functoriality ∧ L.homotopyEquivalencePreserved

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse