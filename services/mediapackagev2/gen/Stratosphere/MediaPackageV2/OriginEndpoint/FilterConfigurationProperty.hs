module Stratosphere.MediaPackageV2.OriginEndpoint.FilterConfigurationProperty (
        FilterConfigurationProperty(..), mkFilterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterConfigurationProperty
  = FilterConfigurationProperty {end :: (Prelude.Maybe (Value Prelude.Text)),
                                 manifestFilter :: (Prelude.Maybe (Value Prelude.Text)),
                                 start :: (Prelude.Maybe (Value Prelude.Text)),
                                 timeDelaySeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterConfigurationProperty :: FilterConfigurationProperty
mkFilterConfigurationProperty
  = FilterConfigurationProperty
      {end = Prelude.Nothing, manifestFilter = Prelude.Nothing,
       start = Prelude.Nothing, timeDelaySeconds = Prelude.Nothing}
instance ToResourceProperties FilterConfigurationProperty where
  toResourceProperties FilterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.FilterConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "End" Prelude.<$> end,
                            (JSON..=) "ManifestFilter" Prelude.<$> manifestFilter,
                            (JSON..=) "Start" Prelude.<$> start,
                            (JSON..=) "TimeDelaySeconds" Prelude.<$> timeDelaySeconds])}
instance JSON.ToJSON FilterConfigurationProperty where
  toJSON FilterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "End" Prelude.<$> end,
               (JSON..=) "ManifestFilter" Prelude.<$> manifestFilter,
               (JSON..=) "Start" Prelude.<$> start,
               (JSON..=) "TimeDelaySeconds" Prelude.<$> timeDelaySeconds]))
instance Property "End" FilterConfigurationProperty where
  type PropertyType "End" FilterConfigurationProperty = Value Prelude.Text
  set newValue FilterConfigurationProperty {..}
    = FilterConfigurationProperty {end = Prelude.pure newValue, ..}
instance Property "ManifestFilter" FilterConfigurationProperty where
  type PropertyType "ManifestFilter" FilterConfigurationProperty = Value Prelude.Text
  set newValue FilterConfigurationProperty {..}
    = FilterConfigurationProperty
        {manifestFilter = Prelude.pure newValue, ..}
instance Property "Start" FilterConfigurationProperty where
  type PropertyType "Start" FilterConfigurationProperty = Value Prelude.Text
  set newValue FilterConfigurationProperty {..}
    = FilterConfigurationProperty {start = Prelude.pure newValue, ..}
instance Property "TimeDelaySeconds" FilterConfigurationProperty where
  type PropertyType "TimeDelaySeconds" FilterConfigurationProperty = Value Prelude.Integer
  set newValue FilterConfigurationProperty {..}
    = FilterConfigurationProperty
        {timeDelaySeconds = Prelude.pure newValue, ..}