module Stratosphere.MediaTailor.Channel.DashPlaylistSettingsProperty (
        DashPlaylistSettingsProperty(..), mkDashPlaylistSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashPlaylistSettingsProperty
  = DashPlaylistSettingsProperty {manifestWindowSeconds :: (Prelude.Maybe (Value Prelude.Double)),
                                  minBufferTimeSeconds :: (Prelude.Maybe (Value Prelude.Double)),
                                  minUpdatePeriodSeconds :: (Prelude.Maybe (Value Prelude.Double)),
                                  suggestedPresentationDelaySeconds :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashPlaylistSettingsProperty :: DashPlaylistSettingsProperty
mkDashPlaylistSettingsProperty
  = DashPlaylistSettingsProperty
      {manifestWindowSeconds = Prelude.Nothing,
       minBufferTimeSeconds = Prelude.Nothing,
       minUpdatePeriodSeconds = Prelude.Nothing,
       suggestedPresentationDelaySeconds = Prelude.Nothing}
instance ToResourceProperties DashPlaylistSettingsProperty where
  toResourceProperties DashPlaylistSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::Channel.DashPlaylistSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ManifestWindowSeconds"
                              Prelude.<$> manifestWindowSeconds,
                            (JSON..=) "MinBufferTimeSeconds" Prelude.<$> minBufferTimeSeconds,
                            (JSON..=) "MinUpdatePeriodSeconds"
                              Prelude.<$> minUpdatePeriodSeconds,
                            (JSON..=) "SuggestedPresentationDelaySeconds"
                              Prelude.<$> suggestedPresentationDelaySeconds])}
instance JSON.ToJSON DashPlaylistSettingsProperty where
  toJSON DashPlaylistSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ManifestWindowSeconds"
                 Prelude.<$> manifestWindowSeconds,
               (JSON..=) "MinBufferTimeSeconds" Prelude.<$> minBufferTimeSeconds,
               (JSON..=) "MinUpdatePeriodSeconds"
                 Prelude.<$> minUpdatePeriodSeconds,
               (JSON..=) "SuggestedPresentationDelaySeconds"
                 Prelude.<$> suggestedPresentationDelaySeconds]))
instance Property "ManifestWindowSeconds" DashPlaylistSettingsProperty where
  type PropertyType "ManifestWindowSeconds" DashPlaylistSettingsProperty = Value Prelude.Double
  set newValue DashPlaylistSettingsProperty {..}
    = DashPlaylistSettingsProperty
        {manifestWindowSeconds = Prelude.pure newValue, ..}
instance Property "MinBufferTimeSeconds" DashPlaylistSettingsProperty where
  type PropertyType "MinBufferTimeSeconds" DashPlaylistSettingsProperty = Value Prelude.Double
  set newValue DashPlaylistSettingsProperty {..}
    = DashPlaylistSettingsProperty
        {minBufferTimeSeconds = Prelude.pure newValue, ..}
instance Property "MinUpdatePeriodSeconds" DashPlaylistSettingsProperty where
  type PropertyType "MinUpdatePeriodSeconds" DashPlaylistSettingsProperty = Value Prelude.Double
  set newValue DashPlaylistSettingsProperty {..}
    = DashPlaylistSettingsProperty
        {minUpdatePeriodSeconds = Prelude.pure newValue, ..}
instance Property "SuggestedPresentationDelaySeconds" DashPlaylistSettingsProperty where
  type PropertyType "SuggestedPresentationDelaySeconds" DashPlaylistSettingsProperty = Value Prelude.Double
  set newValue DashPlaylistSettingsProperty {..}
    = DashPlaylistSettingsProperty
        {suggestedPresentationDelaySeconds = Prelude.pure newValue, ..}