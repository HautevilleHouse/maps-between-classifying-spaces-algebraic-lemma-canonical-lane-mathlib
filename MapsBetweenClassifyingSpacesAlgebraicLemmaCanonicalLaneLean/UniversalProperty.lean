import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure UniversalPropertyPackage where
  classifyingSpaceDomain : Type u
  classifyingSpaceCodomain : Type v
  topologicalSpaceDomain : TopologicalSpace classifyingSpaceDomain
  topologicalSpaceCodomain : TopologicalSpace classifyingSpaceCodomain
  continuousMap : classifyingSpaceDomain → classifyingSpaceCodomain
  pullbackFunctor : Type w
  naturalIsoCondition : Prop
  universalPropertyHolds : Prop

structure UniversalPropertyEvidence (U : UniversalPropertyPackage) where
  continuousMapClosed : U.universalPropertyHolds

def UniversalPropertyClosed (U : UniversalPropertyPackage) : Prop :=
  U.universalPropertyHolds

theorem universal_property_closed_from_evidence (U : UniversalPropertyPackage)
    (E : UniversalPropertyEvidence U) : UniversalPropertyClosed U := by
  exact E.continuousMapClosed

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse