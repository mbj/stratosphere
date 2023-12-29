module Stratosphere.IoTWireless.WirelessDevice.SessionKeysAbpV10xProperty (
        SessionKeysAbpV10xProperty(..), mkSessionKeysAbpV10xProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SessionKeysAbpV10xProperty
  = SessionKeysAbpV10xProperty {appSKey :: (Value Prelude.Text),
                                nwkSKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSessionKeysAbpV10xProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SessionKeysAbpV10xProperty
mkSessionKeysAbpV10xProperty appSKey nwkSKey
  = SessionKeysAbpV10xProperty {appSKey = appSKey, nwkSKey = nwkSKey}
instance ToResourceProperties SessionKeysAbpV10xProperty where
  toResourceProperties SessionKeysAbpV10xProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessDevice.SessionKeysAbpV10x",
         supportsTags = Prelude.False,
         properties = ["AppSKey" JSON..= appSKey,
                       "NwkSKey" JSON..= nwkSKey]}
instance JSON.ToJSON SessionKeysAbpV10xProperty where
  toJSON SessionKeysAbpV10xProperty {..}
    = JSON.object
        ["AppSKey" JSON..= appSKey, "NwkSKey" JSON..= nwkSKey]
instance Property "AppSKey" SessionKeysAbpV10xProperty where
  type PropertyType "AppSKey" SessionKeysAbpV10xProperty = Value Prelude.Text
  set newValue SessionKeysAbpV10xProperty {..}
    = SessionKeysAbpV10xProperty {appSKey = newValue, ..}
instance Property "NwkSKey" SessionKeysAbpV10xProperty where
  type PropertyType "NwkSKey" SessionKeysAbpV10xProperty = Value Prelude.Text
  set newValue SessionKeysAbpV10xProperty {..}
    = SessionKeysAbpV10xProperty {nwkSKey = newValue, ..}