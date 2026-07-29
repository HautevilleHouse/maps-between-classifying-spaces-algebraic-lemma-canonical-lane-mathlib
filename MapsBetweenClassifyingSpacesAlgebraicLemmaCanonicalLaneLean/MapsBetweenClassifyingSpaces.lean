import canonicalLaneMathlib.AdmissibleClass
import MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean.ClassifyingSpace

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure MapsBetweenClassifyingSpaces (X Y : ClassifyingSpaceData) where
  map : X.classifyingSpace → Y.classifyingSpace
  continuousMap : Prop
  homotopyClass : Prop
  inducedHomomorphism : X.group → Y.group

def MapsClosed (M : MapsBetweenClassifyingSpaces X Y) : Prop :=
  M.continuousMap ∧ M.homotopyClass

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse