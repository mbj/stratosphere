module Stratosphere.MediaTailor.PlaybackConfiguration.HlsConfigurationProperty (
        HlsConfigurationProperty(..), mkHlsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsConfigurationProperty
  = HlsConfigurationProperty {manifestEndpointPrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsConfigurationProperty :: HlsConfigurationProperty
mkHlsConfigurationProperty
  = HlsConfigurationProperty
      {manifestEndpointPrefix = Prelude.Nothing}
instance ToResourceProperties HlsConfigurationProperty where
  toResourceProperties HlsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.HlsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ManifestEndpointPrefix"
                              Prelude.<$> manifestEndpointPrefix])}
instance JSON.ToJSON HlsConfigurationProperty where
  toJSON HlsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ManifestEndpointPrefix"
                 Prelude.<$> manifestEndpointPrefix]))
instance Property "ManifestEndpointPrefix" HlsConfigurationProperty where
  type PropertyType "ManifestEndpointPrefix" HlsConfigurationProperty = Value Prelude.Text
  set newValue HlsConfigurationProperty {}
    = HlsConfigurationProperty
        {manifestEndpointPrefix = Prelude.pure newValue, ..}