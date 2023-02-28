module Stratosphere.MediaTailor.PlaybackConfiguration.DashConfigurationProperty (
        DashConfigurationProperty(..), mkDashConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashConfigurationProperty
  = DashConfigurationProperty {manifestEndpointPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                               mpdLocation :: (Prelude.Maybe (Value Prelude.Text)),
                               originManifestType :: (Prelude.Maybe (Value Prelude.Text))}
mkDashConfigurationProperty :: DashConfigurationProperty
mkDashConfigurationProperty
  = DashConfigurationProperty
      {manifestEndpointPrefix = Prelude.Nothing,
       mpdLocation = Prelude.Nothing,
       originManifestType = Prelude.Nothing}
instance ToResourceProperties DashConfigurationProperty where
  toResourceProperties DashConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.DashConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ManifestEndpointPrefix"
                              Prelude.<$> manifestEndpointPrefix,
                            (JSON..=) "MpdLocation" Prelude.<$> mpdLocation,
                            (JSON..=) "OriginManifestType" Prelude.<$> originManifestType])}
instance JSON.ToJSON DashConfigurationProperty where
  toJSON DashConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ManifestEndpointPrefix"
                 Prelude.<$> manifestEndpointPrefix,
               (JSON..=) "MpdLocation" Prelude.<$> mpdLocation,
               (JSON..=) "OriginManifestType" Prelude.<$> originManifestType]))
instance Property "ManifestEndpointPrefix" DashConfigurationProperty where
  type PropertyType "ManifestEndpointPrefix" DashConfigurationProperty = Value Prelude.Text
  set newValue DashConfigurationProperty {..}
    = DashConfigurationProperty
        {manifestEndpointPrefix = Prelude.pure newValue, ..}
instance Property "MpdLocation" DashConfigurationProperty where
  type PropertyType "MpdLocation" DashConfigurationProperty = Value Prelude.Text
  set newValue DashConfigurationProperty {..}
    = DashConfigurationProperty
        {mpdLocation = Prelude.pure newValue, ..}
instance Property "OriginManifestType" DashConfigurationProperty where
  type PropertyType "OriginManifestType" DashConfigurationProperty = Value Prelude.Text
  set newValue DashConfigurationProperty {..}
    = DashConfigurationProperty
        {originManifestType = Prelude.pure newValue, ..}