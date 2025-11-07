module Stratosphere.MediaConnect.Flow.SourceMonitoringConfigProperty (
        module Exports, SourceMonitoringConfigProperty(..),
        mkSourceMonitoringConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.AudioMonitoringSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.VideoMonitoringSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceMonitoringConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-sourcemonitoringconfig.html>
    SourceMonitoringConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-sourcemonitoringconfig.html#cfn-mediaconnect-flow-sourcemonitoringconfig-audiomonitoringsettings>
                                    audioMonitoringSettings :: (Prelude.Maybe [AudioMonitoringSettingProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-sourcemonitoringconfig.html#cfn-mediaconnect-flow-sourcemonitoringconfig-contentqualityanalysisstate>
                                    contentQualityAnalysisState :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-sourcemonitoringconfig.html#cfn-mediaconnect-flow-sourcemonitoringconfig-thumbnailstate>
                                    thumbnailState :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-sourcemonitoringconfig.html#cfn-mediaconnect-flow-sourcemonitoringconfig-videomonitoringsettings>
                                    videoMonitoringSettings :: (Prelude.Maybe [VideoMonitoringSettingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceMonitoringConfigProperty :: SourceMonitoringConfigProperty
mkSourceMonitoringConfigProperty
  = SourceMonitoringConfigProperty
      {haddock_workaround_ = (),
       audioMonitoringSettings = Prelude.Nothing,
       contentQualityAnalysisState = Prelude.Nothing,
       thumbnailState = Prelude.Nothing,
       videoMonitoringSettings = Prelude.Nothing}
instance ToResourceProperties SourceMonitoringConfigProperty where
  toResourceProperties SourceMonitoringConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.SourceMonitoringConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioMonitoringSettings"
                              Prelude.<$> audioMonitoringSettings,
                            (JSON..=) "ContentQualityAnalysisState"
                              Prelude.<$> contentQualityAnalysisState,
                            (JSON..=) "ThumbnailState" Prelude.<$> thumbnailState,
                            (JSON..=) "VideoMonitoringSettings"
                              Prelude.<$> videoMonitoringSettings])}
instance JSON.ToJSON SourceMonitoringConfigProperty where
  toJSON SourceMonitoringConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioMonitoringSettings"
                 Prelude.<$> audioMonitoringSettings,
               (JSON..=) "ContentQualityAnalysisState"
                 Prelude.<$> contentQualityAnalysisState,
               (JSON..=) "ThumbnailState" Prelude.<$> thumbnailState,
               (JSON..=) "VideoMonitoringSettings"
                 Prelude.<$> videoMonitoringSettings]))
instance Property "AudioMonitoringSettings" SourceMonitoringConfigProperty where
  type PropertyType "AudioMonitoringSettings" SourceMonitoringConfigProperty = [AudioMonitoringSettingProperty]
  set newValue SourceMonitoringConfigProperty {..}
    = SourceMonitoringConfigProperty
        {audioMonitoringSettings = Prelude.pure newValue, ..}
instance Property "ContentQualityAnalysisState" SourceMonitoringConfigProperty where
  type PropertyType "ContentQualityAnalysisState" SourceMonitoringConfigProperty = Value Prelude.Text
  set newValue SourceMonitoringConfigProperty {..}
    = SourceMonitoringConfigProperty
        {contentQualityAnalysisState = Prelude.pure newValue, ..}
instance Property "ThumbnailState" SourceMonitoringConfigProperty where
  type PropertyType "ThumbnailState" SourceMonitoringConfigProperty = Value Prelude.Text
  set newValue SourceMonitoringConfigProperty {..}
    = SourceMonitoringConfigProperty
        {thumbnailState = Prelude.pure newValue, ..}
instance Property "VideoMonitoringSettings" SourceMonitoringConfigProperty where
  type PropertyType "VideoMonitoringSettings" SourceMonitoringConfigProperty = [VideoMonitoringSettingProperty]
  set newValue SourceMonitoringConfigProperty {..}
    = SourceMonitoringConfigProperty
        {videoMonitoringSettings = Prelude.pure newValue, ..}