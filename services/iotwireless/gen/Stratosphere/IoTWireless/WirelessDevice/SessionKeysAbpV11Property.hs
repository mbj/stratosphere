module Stratosphere.IoTWireless.WirelessDevice.SessionKeysAbpV11Property (
        SessionKeysAbpV11Property(..), mkSessionKeysAbpV11Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SessionKeysAbpV11Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-sessionkeysabpv11.html>
    SessionKeysAbpV11Property {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-sessionkeysabpv11.html#cfn-iotwireless-wirelessdevice-sessionkeysabpv11-appskey>
                               appSKey :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-sessionkeysabpv11.html#cfn-iotwireless-wirelessdevice-sessionkeysabpv11-fnwksintkey>
                               fNwkSIntKey :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-sessionkeysabpv11.html#cfn-iotwireless-wirelessdevice-sessionkeysabpv11-nwksenckey>
                               nwkSEncKey :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-sessionkeysabpv11.html#cfn-iotwireless-wirelessdevice-sessionkeysabpv11-snwksintkey>
                               sNwkSIntKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSessionKeysAbpV11Property ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> SessionKeysAbpV11Property
mkSessionKeysAbpV11Property
  appSKey
  fNwkSIntKey
  nwkSEncKey
  sNwkSIntKey
  = SessionKeysAbpV11Property
      {haddock_workaround_ = (), appSKey = appSKey,
       fNwkSIntKey = fNwkSIntKey, nwkSEncKey = nwkSEncKey,
       sNwkSIntKey = sNwkSIntKey}
instance ToResourceProperties SessionKeysAbpV11Property where
  toResourceProperties SessionKeysAbpV11Property {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessDevice.SessionKeysAbpV11",
         supportsTags = Prelude.False,
         properties = ["AppSKey" JSON..= appSKey,
                       "FNwkSIntKey" JSON..= fNwkSIntKey, "NwkSEncKey" JSON..= nwkSEncKey,
                       "SNwkSIntKey" JSON..= sNwkSIntKey]}
instance JSON.ToJSON SessionKeysAbpV11Property where
  toJSON SessionKeysAbpV11Property {..}
    = JSON.object
        ["AppSKey" JSON..= appSKey, "FNwkSIntKey" JSON..= fNwkSIntKey,
         "NwkSEncKey" JSON..= nwkSEncKey, "SNwkSIntKey" JSON..= sNwkSIntKey]
instance Property "AppSKey" SessionKeysAbpV11Property where
  type PropertyType "AppSKey" SessionKeysAbpV11Property = Value Prelude.Text
  set newValue SessionKeysAbpV11Property {..}
    = SessionKeysAbpV11Property {appSKey = newValue, ..}
instance Property "FNwkSIntKey" SessionKeysAbpV11Property where
  type PropertyType "FNwkSIntKey" SessionKeysAbpV11Property = Value Prelude.Text
  set newValue SessionKeysAbpV11Property {..}
    = SessionKeysAbpV11Property {fNwkSIntKey = newValue, ..}
instance Property "NwkSEncKey" SessionKeysAbpV11Property where
  type PropertyType "NwkSEncKey" SessionKeysAbpV11Property = Value Prelude.Text
  set newValue SessionKeysAbpV11Property {..}
    = SessionKeysAbpV11Property {nwkSEncKey = newValue, ..}
instance Property "SNwkSIntKey" SessionKeysAbpV11Property where
  type PropertyType "SNwkSIntKey" SessionKeysAbpV11Property = Value Prelude.Text
  set newValue SessionKeysAbpV11Property {..}
    = SessionKeysAbpV11Property {sNwkSIntKey = newValue, ..}