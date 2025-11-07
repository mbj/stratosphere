module Stratosphere.MediaConnect.BridgeSource.MulticastSourceSettingsProperty (
        MulticastSourceSettingsProperty(..),
        mkMulticastSourceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MulticastSourceSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridgesource-multicastsourcesettings.html>
    MulticastSourceSettingsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridgesource-multicastsourcesettings.html#cfn-mediaconnect-bridgesource-multicastsourcesettings-multicastsourceip>
                                     multicastSourceIp :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMulticastSourceSettingsProperty ::
  MulticastSourceSettingsProperty
mkMulticastSourceSettingsProperty
  = MulticastSourceSettingsProperty
      {haddock_workaround_ = (), multicastSourceIp = Prelude.Nothing}
instance ToResourceProperties MulticastSourceSettingsProperty where
  toResourceProperties MulticastSourceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::BridgeSource.MulticastSourceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MulticastSourceIp" Prelude.<$> multicastSourceIp])}
instance JSON.ToJSON MulticastSourceSettingsProperty where
  toJSON MulticastSourceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MulticastSourceIp" Prelude.<$> multicastSourceIp]))
instance Property "MulticastSourceIp" MulticastSourceSettingsProperty where
  type PropertyType "MulticastSourceIp" MulticastSourceSettingsProperty = Value Prelude.Text
  set newValue MulticastSourceSettingsProperty {..}
    = MulticastSourceSettingsProperty
        {multicastSourceIp = Prelude.pure newValue, ..}