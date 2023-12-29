module Stratosphere.MediaTailor.PlaybackConfiguration.CdnConfigurationProperty (
        CdnConfigurationProperty(..), mkCdnConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CdnConfigurationProperty
  = CdnConfigurationProperty {adSegmentUrlPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                              contentSegmentUrlPrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCdnConfigurationProperty :: CdnConfigurationProperty
mkCdnConfigurationProperty
  = CdnConfigurationProperty
      {adSegmentUrlPrefix = Prelude.Nothing,
       contentSegmentUrlPrefix = Prelude.Nothing}
instance ToResourceProperties CdnConfigurationProperty where
  toResourceProperties CdnConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.CdnConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdSegmentUrlPrefix" Prelude.<$> adSegmentUrlPrefix,
                            (JSON..=) "ContentSegmentUrlPrefix"
                              Prelude.<$> contentSegmentUrlPrefix])}
instance JSON.ToJSON CdnConfigurationProperty where
  toJSON CdnConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdSegmentUrlPrefix" Prelude.<$> adSegmentUrlPrefix,
               (JSON..=) "ContentSegmentUrlPrefix"
                 Prelude.<$> contentSegmentUrlPrefix]))
instance Property "AdSegmentUrlPrefix" CdnConfigurationProperty where
  type PropertyType "AdSegmentUrlPrefix" CdnConfigurationProperty = Value Prelude.Text
  set newValue CdnConfigurationProperty {..}
    = CdnConfigurationProperty
        {adSegmentUrlPrefix = Prelude.pure newValue, ..}
instance Property "ContentSegmentUrlPrefix" CdnConfigurationProperty where
  type PropertyType "ContentSegmentUrlPrefix" CdnConfigurationProperty = Value Prelude.Text
  set newValue CdnConfigurationProperty {..}
    = CdnConfigurationProperty
        {contentSegmentUrlPrefix = Prelude.pure newValue, ..}