import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure SteenrodConstructionPackage where
  groupType : Type u
  topologicalSpace : TopologicalSpace groupType
  eilenbergMacLaneSpace : Type v
  cohomologyOperation : Prop
  homotopyEquivalenceGiven : Prop
  algebraicRepresentation : Prop

structure SteenrodConstructionEvidence (C : SteenrodConstructionPackage) where
  cohomologyOperationClosed : C.cohomologyOperation
  homotopyEquivalenceGivenClosed : C.homotopyEquivalenceGiven
  algebraicRepresentationClosed : C.algebraicRepresentation

def SteenrodConstructionClosed (C : SteenrodConstructionPackage) : Prop :=
  C.cohomologyOperation ∧ C.homotopyEquivalenceGiven ∧ C.algebraicRepresentation

theorem steenrod_construction_closed_from_evidence (C : SteenrodConstructionPackage)
    (E : SteenrodConstructionEvidence C) : SteenrodConstructionClosed C := by
  exact And.intro E.cohomologyOperationClosed
    (And.intro E.homotopyEquivalenceGivenClosed E.algebraicRepresentationClosed)

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse