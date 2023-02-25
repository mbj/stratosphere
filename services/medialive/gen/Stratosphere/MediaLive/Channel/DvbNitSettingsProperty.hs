module Stratosphere.MediaLive.Channel.DvbNitSettingsProperty (
        DvbNitSettingsProperty(..), mkDvbNitSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DvbNitSettingsProperty
  = DvbNitSettingsProperty {networkId :: (Prelude.Maybe (Value Prelude.Integer)),
                            networkName :: (Prelude.Maybe (Value Prelude.Text)),
                            repInterval :: (Prelude.Maybe (Value Prelude.Integer))}
mkDvbNitSettingsProperty :: DvbNitSettingsProperty
mkDvbNitSettingsProperty
  = DvbNitSettingsProperty
      {networkId = Prelude.Nothing, networkName = Prelude.Nothing,
       repInterval = Prelude.Nothing}
instance ToResourceProperties DvbNitSettingsProperty where
  toResourceProperties DvbNitSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.DvbNitSettings",
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