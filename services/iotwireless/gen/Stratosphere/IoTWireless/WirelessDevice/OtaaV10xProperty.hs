module Stratosphere.IoTWireless.WirelessDevice.OtaaV10xProperty (
        OtaaV10xProperty(..), mkOtaaV10xProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OtaaV10xProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-otaav10x.html>
    OtaaV10xProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-otaav10x.html#cfn-iotwireless-wirelessdevice-otaav10x-appeui>
                      appEui :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-otaav10x.html#cfn-iotwireless-wirelessdevice-otaav10x-appkey>
                      appKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOtaaV10xProperty ::
  Value Prelude.Text -> Value Prelude.Text -> OtaaV10xProperty
mkOtaaV10xProperty appEui appKey
  = OtaaV10xProperty {appEui = appEui, appKey = appKey}
instance ToResourceProperties OtaaV10xProperty where
  toResourceProperties OtaaV10xProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessDevice.OtaaV10x",
         supportsTags = Prelude.False,
         properties = ["AppEui" JSON..= appEui, "AppKey" JSON..= appKey]}
instance JSON.ToJSON OtaaV10xProperty where
  toJSON OtaaV10xProperty {..}
    = JSON.object ["AppEui" JSON..= appEui, "AppKey" JSON..= appKey]
instance Property "AppEui" OtaaV10xProperty where
  type PropertyType "AppEui" OtaaV10xProperty = Value Prelude.Text
  set newValue OtaaV10xProperty {..}
    = OtaaV10xProperty {appEui = newValue, ..}
instance Property "AppKey" OtaaV10xProperty where
  type PropertyType "AppKey" OtaaV10xProperty = Value Prelude.Text
  set newValue OtaaV10xProperty {..}
    = OtaaV10xProperty {appKey = newValue, ..}