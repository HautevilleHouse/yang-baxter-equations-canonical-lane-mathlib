import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace YangBaxterEquationsCanonicalLaneLean

structure VertexModel where
  weights : ℕ → ℕ → ℂ
  partitionFunction : ℕ → ℂ
  yangBaxterRelation : ∀ i j k : ℕ, weights i j * weights i k * weights j k = weights j k * weights i k * weights i j

def vertexModelClosed (V : VertexModel) : Prop :=
  V.yangBaxterRelation

theorem vertex_model_from_admissible (A : AdmissibleClass) : vertexModelClosed (sourceVertexModel) := by
  sorry

end YangBaxterEquationsCanonicalLaneLean
end HautevilleHouse
