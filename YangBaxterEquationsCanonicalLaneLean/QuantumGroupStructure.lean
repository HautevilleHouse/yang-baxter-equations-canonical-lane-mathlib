import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace YangBaxterEquationsCanonicalLaneLean

structure QuantumGroup (g : Type) [Finset g] where
  hopfAlgebra : HopfAlgebra ℂ
  rMatrix : hopfAlgebra.TensorProduct → hopfAlgebra.TensorProduct
  yangBaxter : (rMatrix ⊗ id) ∘ (id ⊗ rMatrix) ∘ (rMatrix ⊗ id) = (id ⊗ rMatrix) ∘ (rMatrix ⊗ id) ∘ (id ⊗ rMatrix)

def quantumGroupClosed (Q : QuantumGroup g) : Prop :=
  Q.yangBaxter

theorem quantum_group_from_admissible (g : Type) [Finset g] (A : AdmissibleClass) : quantumGroupClosed (sourceQuantumGroup g) := by
  sorry

end YangBaxterEquationsCanonicalLaneLean
end HautevilleHouse
