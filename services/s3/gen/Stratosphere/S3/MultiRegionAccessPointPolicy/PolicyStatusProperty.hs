module Stratosphere.S3.MultiRegionAccessPointPolicy.PolicyStatusProperty (
        PolicyStatusProperty(..), mkPolicyStatusProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyStatusProperty
  = PolicyStatusProperty {isPublic :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyStatusProperty ::
  Value Prelude.Text -> PolicyStatusProperty
mkPolicyStatusProperty isPublic
  = PolicyStatusProperty {isPublic = isPublic}
instance ToResourceProperties PolicyStatusProperty where
  toResourceProperties PolicyStatusProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::MultiRegionAccessPointPolicy.PolicyStatus",
         supportsTags = Prelude.False,
         properties = ["IsPublic" JSON..= isPublic]}
instance JSON.ToJSON PolicyStatusProperty where
  toJSON PolicyStatusProperty {..}
    = JSON.object ["IsPublic" JSON..= isPublic]
instance Property "IsPublic" PolicyStatusProperty where
  type PropertyType "IsPublic" PolicyStatusProperty = Value Prelude.Text
  set newValue PolicyStatusProperty {}
    = PolicyStatusProperty {isPublic = newValue, ..}