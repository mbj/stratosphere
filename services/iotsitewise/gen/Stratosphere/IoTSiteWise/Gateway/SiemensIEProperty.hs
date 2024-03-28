module Stratosphere.IoTSiteWise.Gateway.SiemensIEProperty (
        SiemensIEProperty(..), mkSiemensIEProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SiemensIEProperty
  = SiemensIEProperty {iotCoreThingName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSiemensIEProperty :: Value Prelude.Text -> SiemensIEProperty
mkSiemensIEProperty iotCoreThingName
  = SiemensIEProperty {iotCoreThingName = iotCoreThingName}
instance ToResourceProperties SiemensIEProperty where
  toResourceProperties SiemensIEProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Gateway.SiemensIE",
         supportsTags = Prelude.False,
         properties = ["IotCoreThingName" JSON..= iotCoreThingName]}
instance JSON.ToJSON SiemensIEProperty where
  toJSON SiemensIEProperty {..}
    = JSON.object ["IotCoreThingName" JSON..= iotCoreThingName]
instance Property "IotCoreThingName" SiemensIEProperty where
  type PropertyType "IotCoreThingName" SiemensIEProperty = Value Prelude.Text
  set newValue SiemensIEProperty {}
    = SiemensIEProperty {iotCoreThingName = newValue, ..}