import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean

structure CohomologyLeraySerrePackage where
  totalSpaceType : Type u
  baseSpaceType : Type v
  fiberType : Type w
  spectralSequenceDefined : Prop
  E2PageComputed : Prop
  edgeMapsIdentified : Prop
  differentialStructure : Prop

structure CohomologyLeraySerreEvidence (C : CohomologyLeraySerrePackage) where
  spectralSequenceDefinedClosed : C.spectralSequenceDefined
  E2PageComputedClosed : C.E2PageComputed
  edgeMapsIdentifiedClosed : C.edgeMapsIdentified
  differentialStructureClosed : C.differentialStructure

def CohomologyLeraySerreClosed (C : CohomologyLeraySerrePackage) : Prop :=
  C.spectralSequenceDefined ∧ C.E2PageComputed ∧ C.edgeMapsIdentified ∧ C.differentialStructure

theorem cohomology_leray_serre_closed_from_evidence (C : CohomologyLeraySerrePackage)
    (E : CohomologyLeraySerreEvidence C) : CohomologyLeraySerreClosed C := by
  exact And.intro E.spectralSequenceDefinedClosed
    (And.intro E.E2PageComputedClosed
      (And.intro E.edgeMapsIdentifiedClosed E.differentialStructureClosed))

end MapsBetweenClassifyingSpacesAlgebraicLemmaCanonicalLaneLean
end HautevilleHouse