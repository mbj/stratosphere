module Stratosphere.MediaLive.Channel.EncoderSettingsProperty (
        module Exports, EncoderSettingsProperty(..),
        mkEncoderSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioDescriptionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AvailBlankingProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AvailConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.BlackoutSlateProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.CaptionDescriptionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.FeatureActivationsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.GlobalConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MotionGraphicsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.NielsenConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.TimecodeConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.VideoDescriptionProperty as Exports
import Stratosphere.ResourceProperties
data EncoderSettingsProperty
  = EncoderSettingsProperty {audioDescriptions :: (Prelude.Maybe [AudioDescriptionProperty]),
                             availBlanking :: (Prelude.Maybe AvailBlankingProperty),
                             availConfiguration :: (Prelude.Maybe AvailConfigurationProperty),
                             blackoutSlate :: (Prelude.Maybe BlackoutSlateProperty),
                             captionDescriptions :: (Prelude.Maybe [CaptionDescriptionProperty]),
                             featureActivations :: (Prelude.Maybe FeatureActivationsProperty),
                             globalConfiguration :: (Prelude.Maybe GlobalConfigurationProperty),
                             motionGraphicsConfiguration :: (Prelude.Maybe MotionGraphicsConfigurationProperty),
                             nielsenConfiguration :: (Prelude.Maybe NielsenConfigurationProperty),
                             outputGroups :: (Prelude.Maybe [OutputGroupProperty]),
                             timecodeConfig :: (Prelude.Maybe TimecodeConfigProperty),
                             videoDescriptions :: (Prelude.Maybe [VideoDescriptionProperty])}
mkEncoderSettingsProperty :: EncoderSettingsProperty
mkEncoderSettingsProperty
  = EncoderSettingsProperty
      {audioDescriptions = Prelude.Nothing,
       availBlanking = Prelude.Nothing,
       availConfiguration = Prelude.Nothing,
       blackoutSlate = Prelude.Nothing,
       captionDescriptions = Prelude.Nothing,
       featureActivations = Prelude.Nothing,
       globalConfiguration = Prelude.Nothing,
       motionGraphicsConfiguration = Prelude.Nothing,
       nielsenConfiguration = Prelude.Nothing,
       outputGroups = Prelude.Nothing, timecodeConfig = Prelude.Nothing,
       videoDescriptions = Prelude.Nothing}
instance ToResourceProperties EncoderSettingsProperty where
  toResourceProperties EncoderSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.EncoderSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioDescriptions" Prelude.<$> audioDescriptions,
                            (JSON..=) "AvailBlanking" Prelude.<$> availBlanking,
                            (JSON..=) "AvailConfiguration" Prelude.<$> availConfiguration,
                            (JSON..=) "BlackoutSlate" Prelude.<$> blackoutSlate,
                            (JSON..=) "CaptionDescriptions" Prelude.<$> captionDescriptions,
                            (JSON..=) "FeatureActivations" Prelude.<$> featureActivations,
                            (JSON..=) "GlobalConfiguration" Prelude.<$> globalConfiguration,
                            (JSON..=) "MotionGraphicsConfiguration"
                              Prelude.<$> motionGraphicsConfiguration,
                            (JSON..=) "NielsenConfiguration" Prelude.<$> nielsenConfiguration,
                            (JSON..=) "OutputGroups" Prelude.<$> outputGroups,
                            (JSON..=) "TimecodeConfig" Prelude.<$> timecodeConfig,
                            (JSON..=) "VideoDescriptions" Prelude.<$> videoDescriptions])}
instance JSON.ToJSON EncoderSettingsProperty where
  toJSON EncoderSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioDescriptions" Prelude.<$> audioDescriptions,
               (JSON..=) "AvailBlanking" Prelude.<$> availBlanking,
               (JSON..=) "AvailConfiguration" Prelude.<$> availConfiguration,
               (JSON..=) "BlackoutSlate" Prelude.<$> blackoutSlate,
               (JSON..=) "CaptionDescriptions" Prelude.<$> captionDescriptions,
               (JSON..=) "FeatureActivations" Prelude.<$> featureActivations,
               (JSON..=) "GlobalConfiguration" Prelude.<$> globalConfiguration,
               (JSON..=) "MotionGraphicsConfiguration"
                 Prelude.<$> motionGraphicsConfiguration,
               (JSON..=) "NielsenConfiguration" Prelude.<$> nielsenConfiguration,
               (JSON..=) "OutputGroups" Prelude.<$> outputGroups,
               (JSON..=) "TimecodeConfig" Prelude.<$> timecodeConfig,
               (JSON..=) "VideoDescriptions" Prelude.<$> videoDescriptions]))
instance Property "AudioDescriptions" EncoderSettingsProperty where
  type PropertyType "AudioDescriptions" EncoderSettingsProperty = [AudioDescriptionProperty]
  set newValue EncoderSettingsProperty {..}
    = EncoderSettingsProperty
        {audioDescriptions = Prelude.pure newValue, ..}
instance Property "AvailBlanking" EncoderSettingsProperty where
  type PropertyType "AvailBlanking" EncoderSettingsProperty = AvailBlankingProperty
  set newValue EncoderSettingsProperty {..}
    = EncoderSettingsProperty
        {availBlanking = Prelude.pure newValue, ..}
instance Property "AvailConfiguration" EncoderSettingsProperty where
  type PropertyType "AvailConfiguration" EncoderSettingsProperty = AvailConfigurationProperty
  set newValue EncoderSettingsProperty {..}
    = EncoderSettingsProperty
        {availConfiguration = Prelude.pure newValue, ..}
instance Property "BlackoutSlate" EncoderSettingsProperty where
  type PropertyType "BlackoutSlate" EncoderSettingsProperty = BlackoutSlateProperty
  set newValue EncoderSettingsProperty {..}
    = EncoderSettingsProperty
        {blackoutSlate = Prelude.pure newValue, ..}
instance Property "CaptionDescriptions" EncoderSettingsProperty where
  type PropertyType "CaptionDescriptions" EncoderSettingsProperty = [CaptionDescriptionProperty]
  set newValue EncoderSettingsProperty {..}
    = EncoderSettingsProperty
        {captionDescriptions = Prelude.pure newValue, ..}
instance Property "FeatureActivations" EncoderSettingsProperty where
  type PropertyType "FeatureActivations" EncoderSettingsProperty = FeatureActivationsProperty
  set newValue EncoderSettingsProperty {..}
    = EncoderSettingsProperty
        {featureActivations = Prelude.pure newValue, ..}
instance Property "GlobalConfiguration" EncoderSettingsProperty where
  type PropertyType "GlobalConfiguration" EncoderSettingsProperty = GlobalConfigurationProperty
  set newValue EncoderSettingsProperty {..}
    = EncoderSettingsProperty
        {globalConfiguration = Prelude.pure newValue, ..}
instance Property "MotionGraphicsConfiguration" EncoderSettingsProperty where
  type PropertyType "MotionGraphicsConfiguration" EncoderSettingsProperty = MotionGraphicsConfigurationProperty
  set newValue EncoderSettingsProperty {..}
    = EncoderSettingsProperty
        {motionGraphicsConfiguration = Prelude.pure newValue, ..}
instance Property "NielsenConfiguration" EncoderSettingsProperty where
  type PropertyType "NielsenConfiguration" EncoderSettingsProperty = NielsenConfigurationProperty
  set newValue EncoderSettingsProperty {..}
    = EncoderSettingsProperty
        {nielsenConfiguration = Prelude.pure newValue, ..}
instance Property "OutputGroups" EncoderSettingsProperty where
  type PropertyType "OutputGroups" EncoderSettingsProperty = [OutputGroupProperty]
  set newValue EncoderSettingsProperty {..}
    = EncoderSettingsProperty
        {outputGroups = Prelude.pure newValue, ..}
instance Property "TimecodeConfig" EncoderSettingsProperty where
  type PropertyType "TimecodeConfig" EncoderSettingsProperty = TimecodeConfigProperty
  set newValue EncoderSettingsProperty {..}
    = EncoderSettingsProperty
        {timecodeConfig = Prelude.pure newValue, ..}
instance Property "VideoDescriptions" EncoderSettingsProperty where
  type PropertyType "VideoDescriptions" EncoderSettingsProperty = [VideoDescriptionProperty]
  set newValue EncoderSettingsProperty {..}
    = EncoderSettingsProperty
        {videoDescriptions = Prelude.pure newValue, ..}