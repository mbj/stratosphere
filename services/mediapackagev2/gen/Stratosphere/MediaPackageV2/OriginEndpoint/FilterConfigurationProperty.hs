module Stratosphere.MediaPackageV2.OriginEndpoint.FilterConfigurationProperty (
        FilterConfigurationProperty(..), mkFilterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-filterconfiguration.html>
    FilterConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-filterconfiguration.html#cfn-mediapackagev2-originendpoint-filterconfiguration-clipstarttime>
                                 clipStartTime :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-filterconfiguration.html#cfn-mediapackagev2-originendpoint-filterconfiguration-end>
                                 end :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-filterconfiguration.html#cfn-mediapackagev2-originendpoint-filterconfiguration-manifestfilter>
                                 manifestFilter :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-filterconfiguration.html#cfn-mediapackagev2-originendpoint-filterconfiguration-start>
                                 start :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-filterconfiguration.html#cfn-mediapackagev2-originendpoint-filterconfiguration-timedelayseconds>
                                 timeDelaySeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterConfigurationProperty :: FilterConfigurationProperty
mkFilterConfigurationProperty
  = FilterConfigurationProperty
      {haddock_workaround_ = (), clipStartTime = Prelude.Nothing,
       end = Prelude.Nothing, manifestFilter = Prelude.Nothing,
       start = Prelude.Nothing, timeDelaySeconds = Prelude.Nothing}
instance ToResourceProperties FilterConfigurationProperty where
  toResourceProperties FilterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.FilterConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClipStartTime" Prelude.<$> clipStartTime,
                            (JSON..=) "End" Prelude.<$> end,
                            (JSON..=) "ManifestFilter" Prelude.<$> manifestFilter,
                            (JSON..=) "Start" Prelude.<$> start,
                            (JSON..=) "TimeDelaySeconds" Prelude.<$> timeDelaySeconds])}
instance JSON.ToJSON FilterConfigurationProperty where
  toJSON FilterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClipStartTime" Prelude.<$> clipStartTime,
               (JSON..=) "End" Prelude.<$> end,
               (JSON..=) "ManifestFilter" Prelude.<$> manifestFilter,
               (JSON..=) "Start" Prelude.<$> start,
               (JSON..=) "TimeDelaySeconds" Prelude.<$> timeDelaySeconds]))
instance Property "ClipStartTime" FilterConfigurationProperty where
  type PropertyType "ClipStartTime" FilterConfigurationProperty = Value Prelude.Text
  set newValue FilterConfigurationProperty {..}
    = FilterConfigurationProperty
        {clipStartTime = Prelude.pure newValue, ..}
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