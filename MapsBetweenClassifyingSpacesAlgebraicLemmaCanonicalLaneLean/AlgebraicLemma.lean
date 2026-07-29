import canonicalLaneMathlib.AdmissibleClass
import MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean.MapsBetweenClassifyingSpaces

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure AlgebraicLemmaData (X Y : ClassifyingSpaceData) (M : MapsBetweenClassifyingSpaces X Y) where
  lemmaStatement : Prop
  proofSketch : Prop
  usesModelCategory : Prop

def AlgebraicLemmaClosed (L : AlgebraicLemmaData X Y M) : Prop :=
  L.lemmaStatement ∧ L.proofSketch

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse