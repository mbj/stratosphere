module Stratosphere.IoTSiteWise.Gateway.GreengrassProperty (
        GreengrassProperty(..), mkGreengrassProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GreengrassProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-greengrass.html>
    GreengrassProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-greengrass.html#cfn-iotsitewise-gateway-greengrass-grouparn>
                        groupArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGreengrassProperty :: Value Prelude.Text -> GreengrassProperty
mkGreengrassProperty groupArn
  = GreengrassProperty
      {haddock_workaround_ = (), groupArn = groupArn}
instance ToResourceProperties GreengrassProperty where
  toResourceProperties GreengrassProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Gateway.Greengrass",
         supportsTags = Prelude.False,
         properties = ["GroupArn" JSON..= groupArn]}
instance JSON.ToJSON GreengrassProperty where
  toJSON GreengrassProperty {..}
    = JSON.object ["GroupArn" JSON..= groupArn]
instance Property "GroupArn" GreengrassProperty where
  type PropertyType "GroupArn" GreengrassProperty = Value Prelude.Text
  set newValue GreengrassProperty {..}
    = GreengrassProperty {groupArn = newValue, ..}