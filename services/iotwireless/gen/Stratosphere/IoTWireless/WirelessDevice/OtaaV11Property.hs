module Stratosphere.IoTWireless.WirelessDevice.OtaaV11Property (
        OtaaV11Property(..), mkOtaaV11Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OtaaV11Property
  = OtaaV11Property {appKey :: (Value Prelude.Text),
                     joinEui :: (Value Prelude.Text),
                     nwkKey :: (Value Prelude.Text)}
mkOtaaV11Property ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> OtaaV11Property
mkOtaaV11Property appKey joinEui nwkKey
  = OtaaV11Property
      {appKey = appKey, joinEui = joinEui, nwkKey = nwkKey}
instance ToResourceProperties OtaaV11Property where
  toResourceProperties OtaaV11Property {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessDevice.OtaaV11",
         properties = ["AppKey" JSON..= appKey, "JoinEui" JSON..= joinEui,
                       "NwkKey" JSON..= nwkKey]}
instance JSON.ToJSON OtaaV11Property where
  toJSON OtaaV11Property {..}
    = JSON.object
        ["AppKey" JSON..= appKey, "JoinEui" JSON..= joinEui,
         "NwkKey" JSON..= nwkKey]
instance Property "AppKey" OtaaV11Property where
  type PropertyType "AppKey" OtaaV11Property = Value Prelude.Text
  set newValue OtaaV11Property {..}
    = OtaaV11Property {appKey = newValue, ..}
instance Property "JoinEui" OtaaV11Property where
  type PropertyType "JoinEui" OtaaV11Property = Value Prelude.Text
  set newValue OtaaV11Property {..}
    = OtaaV11Property {joinEui = newValue, ..}
instance Property "NwkKey" OtaaV11Property where
  type PropertyType "NwkKey" OtaaV11Property = Value Prelude.Text
  set newValue OtaaV11Property {..}
    = OtaaV11Property {nwkKey = newValue, ..}