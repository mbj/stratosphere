module Stratosphere.CloudFormation.CustomResource (
        CustomResource(..), mkCustomResource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomResource
  = CustomResource {serviceToken :: (Value Prelude.Text)}
mkCustomResource :: Value Prelude.Text -> CustomResource
mkCustomResource serviceToken
  = CustomResource {serviceToken = serviceToken}
instance ToResourceProperties CustomResource where
  toResourceProperties CustomResource {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::CustomResource",
         supportsTags = Prelude.False,
         properties = ["ServiceToken" JSON..= serviceToken]}
instance JSON.ToJSON CustomResource where
  toJSON CustomResource {..}
    = JSON.object ["ServiceToken" JSON..= serviceToken]
instance Property "ServiceToken" CustomResource where
  type PropertyType "ServiceToken" CustomResource = Value Prelude.Text
  set newValue CustomResource {}
    = CustomResource {serviceToken = newValue, ..}