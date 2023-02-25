module Stratosphere.MSK.ServerlessCluster.IamProperty (
        IamProperty(..), mkIamProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamProperty = IamProperty {enabled :: (Value Prelude.Bool)}
mkIamProperty :: Value Prelude.Bool -> IamProperty
mkIamProperty enabled = IamProperty {enabled = enabled}
instance ToResourceProperties IamProperty where
  toResourceProperties IamProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::ServerlessCluster.Iam",
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON IamProperty where
  toJSON IamProperty {..} = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" IamProperty where
  type PropertyType "Enabled" IamProperty = Value Prelude.Bool
  set newValue IamProperty {} = IamProperty {enabled = newValue, ..}