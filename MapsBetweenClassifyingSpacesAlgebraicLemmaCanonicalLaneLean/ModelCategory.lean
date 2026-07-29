import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure ModelCategoryData where
  object : Type u
  weakEquivalences : Prop
  fibrations : Prop
  cofibrations : Prop
  modelCategoryAxioms : Prop

def ModelCategoryWitnessClosed (M : ModelCategoryData) : Prop :=
  M.modelCategoryAxioms

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse