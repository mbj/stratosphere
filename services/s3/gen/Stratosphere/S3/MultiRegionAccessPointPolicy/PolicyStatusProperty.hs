module Stratosphere.S3.MultiRegionAccessPointPolicy.PolicyStatusProperty (
        PolicyStatusProperty(..), mkPolicyStatusProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyStatusProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-multiregionaccesspointpolicy-policystatus.html>
    PolicyStatusProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-multiregionaccesspointpolicy-policystatus.html#cfn-s3-multiregionaccesspointpolicy-policystatus-ispublic>
                          isPublic :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyStatusProperty ::
  Value Prelude.Text -> PolicyStatusProperty
mkPolicyStatusProperty isPublic
  = PolicyStatusProperty
      {haddock_workaround_ = (), isPublic = isPublic}
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
  set newValue PolicyStatusProperty {..}
    = PolicyStatusProperty {isPublic = newValue, ..}