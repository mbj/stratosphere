module Stratosphere.IoTSiteWise.Gateway.GreengrassV2Property (
        GreengrassV2Property(..), mkGreengrassV2Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GreengrassV2Property
  = GreengrassV2Property {coreDeviceThingName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGreengrassV2Property ::
  Value Prelude.Text -> GreengrassV2Property
mkGreengrassV2Property coreDeviceThingName
  = GreengrassV2Property {coreDeviceThingName = coreDeviceThingName}
instance ToResourceProperties GreengrassV2Property where
  toResourceProperties GreengrassV2Property {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Gateway.GreengrassV2",
         supportsTags = Prelude.False,
         properties = ["CoreDeviceThingName" JSON..= coreDeviceThingName]}
instance JSON.ToJSON GreengrassV2Property where
  toJSON GreengrassV2Property {..}
    = JSON.object ["CoreDeviceThingName" JSON..= coreDeviceThingName]
instance Property "CoreDeviceThingName" GreengrassV2Property where
  type PropertyType "CoreDeviceThingName" GreengrassV2Property = Value Prelude.Text
  set newValue GreengrassV2Property {}
    = GreengrassV2Property {coreDeviceThingName = newValue, ..}