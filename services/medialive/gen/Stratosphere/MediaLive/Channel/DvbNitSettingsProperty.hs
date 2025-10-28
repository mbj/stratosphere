module Stratosphere.MediaLive.Channel.DvbNitSettingsProperty (
        DvbNitSettingsProperty(..), mkDvbNitSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DvbNitSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbnitsettings.html>
    DvbNitSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbnitsettings.html#cfn-medialive-channel-dvbnitsettings-networkid>
                            networkId :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbnitsettings.html#cfn-medialive-channel-dvbnitsettings-networkname>
                            networkName :: (Prelude.Maybe (Value Prelude.Text)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbnitsettings.html#cfn-medialive-channel-dvbnitsettings-repinterval>
                            repInterval :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDvbNitSettingsProperty :: DvbNitSettingsProperty
mkDvbNitSettingsProperty
  = DvbNitSettingsProperty
      {networkId = Prelude.Nothing, networkName = Prelude.Nothing,
       repInterval = Prelude.Nothing}
instance ToResourceProperties DvbNitSettingsProperty where
  toResourceProperties DvbNitSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.DvbNitSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NetworkId" Prelude.<$> networkId,
                            (JSON..=) "NetworkName" Prelude.<$> networkName,
                            (JSON..=) "RepInterval" Prelude.<$> repInterval])}
instance JSON.ToJSON DvbNitSettingsProperty where
  toJSON DvbNitSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NetworkId" Prelude.<$> networkId,
               (JSON..=) "NetworkName" Prelude.<$> networkName,
               (JSON..=) "RepInterval" Prelude.<$> repInterval]))
instance Property "NetworkId" DvbNitSettingsProperty where
  type PropertyType "NetworkId" DvbNitSettingsProperty = Value Prelude.Integer
  set newValue DvbNitSettingsProperty {..}
    = DvbNitSettingsProperty {networkId = Prelude.pure newValue, ..}
instance Property "NetworkName" DvbNitSettingsProperty where
  type PropertyType "NetworkName" DvbNitSettingsProperty = Value Prelude.Text
  set newValue DvbNitSettingsProperty {..}
    = DvbNitSettingsProperty {networkName = Prelude.pure newValue, ..}
instance Property "RepInterval" DvbNitSettingsProperty where
  type PropertyType "RepInterval" DvbNitSettingsProperty = Value Prelude.Integer
  set newValue DvbNitSettingsProperty {..}
    = DvbNitSettingsProperty {repInterval = Prelude.pure newValue, ..}