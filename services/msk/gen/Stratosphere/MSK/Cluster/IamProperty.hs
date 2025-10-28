module Stratosphere.MSK.Cluster.IamProperty (
        IamProperty(..), mkIamProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-iam.html>
    IamProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-iam.html#cfn-msk-cluster-iam-enabled>
                 enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamProperty :: Value Prelude.Bool -> IamProperty
mkIamProperty enabled = IamProperty {enabled = enabled}
instance ToResourceProperties IamProperty where
  toResourceProperties IamProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.Iam", supportsTags = Prelude.False,
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON IamProperty where
  toJSON IamProperty {..} = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" IamProperty where
  type PropertyType "Enabled" IamProperty = Value Prelude.Bool
  set newValue IamProperty {} = IamProperty {enabled = newValue, ..}