module Stratosphere.MediaConnect.Flow.VideoMonitoringSettingProperty (
        module Exports, VideoMonitoringSettingProperty(..),
        mkVideoMonitoringSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.BlackFramesProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.FrozenFramesProperty as Exports
import Stratosphere.ResourceProperties
data VideoMonitoringSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-videomonitoringsetting.html>
    VideoMonitoringSettingProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-videomonitoringsetting.html#cfn-mediaconnect-flow-videomonitoringsetting-blackframes>
                                    blackFrames :: (Prelude.Maybe BlackFramesProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-videomonitoringsetting.html#cfn-mediaconnect-flow-videomonitoringsetting-frozenframes>
                                    frozenFrames :: (Prelude.Maybe FrozenFramesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoMonitoringSettingProperty :: VideoMonitoringSettingProperty
mkVideoMonitoringSettingProperty
  = VideoMonitoringSettingProperty
      {haddock_workaround_ = (), blackFrames = Prelude.Nothing,
       frozenFrames = Prelude.Nothing}
instance ToResourceProperties VideoMonitoringSettingProperty where
  toResourceProperties VideoMonitoringSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.VideoMonitoringSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlackFrames" Prelude.<$> blackFrames,
                            (JSON..=) "FrozenFrames" Prelude.<$> frozenFrames])}
instance JSON.ToJSON VideoMonitoringSettingProperty where
  toJSON VideoMonitoringSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlackFrames" Prelude.<$> blackFrames,
               (JSON..=) "FrozenFrames" Prelude.<$> frozenFrames]))
instance Property "BlackFrames" VideoMonitoringSettingProperty where
  type PropertyType "BlackFrames" VideoMonitoringSettingProperty = BlackFramesProperty
  set newValue VideoMonitoringSettingProperty {..}
    = VideoMonitoringSettingProperty
        {blackFrames = Prelude.pure newValue, ..}
instance Property "FrozenFrames" VideoMonitoringSettingProperty where
  type PropertyType "FrozenFrames" VideoMonitoringSettingProperty = FrozenFramesProperty
  set newValue VideoMonitoringSettingProperty {..}
    = VideoMonitoringSettingProperty
        {frozenFrames = Prelude.pure newValue, ..}