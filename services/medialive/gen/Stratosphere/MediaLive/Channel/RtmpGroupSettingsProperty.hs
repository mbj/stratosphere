module Stratosphere.MediaLive.Channel.RtmpGroupSettingsProperty (
        RtmpGroupSettingsProperty(..), mkRtmpGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RtmpGroupSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html>
    RtmpGroupSettingsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-admarkers>
                               adMarkers :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-authenticationscheme>
                               authenticationScheme :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-cachefullbehavior>
                               cacheFullBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-cachelength>
                               cacheLength :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-captiondata>
                               captionData :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-includefillernalunits>
                               includeFillerNalUnits :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-inputlossaction>
                               inputLossAction :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-rtmpgroupsettings.html#cfn-medialive-channel-rtmpgroupsettings-restartdelay>
                               restartDelay :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRtmpGroupSettingsProperty :: RtmpGroupSettingsProperty
mkRtmpGroupSettingsProperty
  = RtmpGroupSettingsProperty
      {haddock_workaround_ = (), adMarkers = Prelude.Nothing,
       authenticationScheme = Prelude.Nothing,
       cacheFullBehavior = Prelude.Nothing, cacheLength = Prelude.Nothing,
       captionData = Prelude.Nothing,
       includeFillerNalUnits = Prelude.Nothing,
       inputLossAction = Prelude.Nothing, restartDelay = Prelude.Nothing}
instance ToResourceProperties RtmpGroupSettingsProperty where
  toResourceProperties RtmpGroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.RtmpGroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdMarkers" Prelude.<$> adMarkers,
                            (JSON..=) "AuthenticationScheme" Prelude.<$> authenticationScheme,
                            (JSON..=) "CacheFullBehavior" Prelude.<$> cacheFullBehavior,
                            (JSON..=) "CacheLength" Prelude.<$> cacheLength,
                            (JSON..=) "CaptionData" Prelude.<$> captionData,
                            (JSON..=) "IncludeFillerNalUnits"
                              Prelude.<$> includeFillerNalUnits,
                            (JSON..=) "InputLossAction" Prelude.<$> inputLossAction,
                            (JSON..=) "RestartDelay" Prelude.<$> restartDelay])}
instance JSON.ToJSON RtmpGroupSettingsProperty where
  toJSON RtmpGroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdMarkers" Prelude.<$> adMarkers,
               (JSON..=) "AuthenticationScheme" Prelude.<$> authenticationScheme,
               (JSON..=) "CacheFullBehavior" Prelude.<$> cacheFullBehavior,
               (JSON..=) "CacheLength" Prelude.<$> cacheLength,
               (JSON..=) "CaptionData" Prelude.<$> captionData,
               (JSON..=) "IncludeFillerNalUnits"
                 Prelude.<$> includeFillerNalUnits,
               (JSON..=) "InputLossAction" Prelude.<$> inputLossAction,
               (JSON..=) "RestartDelay" Prelude.<$> restartDelay]))
instance Property "AdMarkers" RtmpGroupSettingsProperty where
  type PropertyType "AdMarkers" RtmpGroupSettingsProperty = ValueList Prelude.Text
  set newValue RtmpGroupSettingsProperty {..}
    = RtmpGroupSettingsProperty {adMarkers = Prelude.pure newValue, ..}
instance Property "AuthenticationScheme" RtmpGroupSettingsProperty where
  type PropertyType "AuthenticationScheme" RtmpGroupSettingsProperty = Value Prelude.Text
  set newValue RtmpGroupSettingsProperty {..}
    = RtmpGroupSettingsProperty
        {authenticationScheme = Prelude.pure newValue, ..}
instance Property "CacheFullBehavior" RtmpGroupSettingsProperty where
  type PropertyType "CacheFullBehavior" RtmpGroupSettingsProperty = Value Prelude.Text
  set newValue RtmpGroupSettingsProperty {..}
    = RtmpGroupSettingsProperty
        {cacheFullBehavior = Prelude.pure newValue, ..}
instance Property "CacheLength" RtmpGroupSettingsProperty where
  type PropertyType "CacheLength" RtmpGroupSettingsProperty = Value Prelude.Integer
  set newValue RtmpGroupSettingsProperty {..}
    = RtmpGroupSettingsProperty
        {cacheLength = Prelude.pure newValue, ..}
instance Property "CaptionData" RtmpGroupSettingsProperty where
  type PropertyType "CaptionData" RtmpGroupSettingsProperty = Value Prelude.Text
  set newValue RtmpGroupSettingsProperty {..}
    = RtmpGroupSettingsProperty
        {captionData = Prelude.pure newValue, ..}
instance Property "IncludeFillerNalUnits" RtmpGroupSettingsProperty where
  type PropertyType "IncludeFillerNalUnits" RtmpGroupSettingsProperty = Value Prelude.Text
  set newValue RtmpGroupSettingsProperty {..}
    = RtmpGroupSettingsProperty
        {includeFillerNalUnits = Prelude.pure newValue, ..}
instance Property "InputLossAction" RtmpGroupSettingsProperty where
  type PropertyType "InputLossAction" RtmpGroupSettingsProperty = Value Prelude.Text
  set newValue RtmpGroupSettingsProperty {..}
    = RtmpGroupSettingsProperty
        {inputLossAction = Prelude.pure newValue, ..}
instance Property "RestartDelay" RtmpGroupSettingsProperty where
  type PropertyType "RestartDelay" RtmpGroupSettingsProperty = Value Prelude.Integer
  set newValue RtmpGroupSettingsProperty {..}
    = RtmpGroupSettingsProperty
        {restartDelay = Prelude.pure newValue, ..}