module Stratosphere.MediaTailor.PlaybackConfiguration (
        module Exports, PlaybackConfiguration(..), mkPlaybackConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.AvailSuppressionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.BumperProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.CdnConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.DashConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.HlsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.LivePreRollConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.ManifestProcessingRulesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PlaybackConfiguration
  = PlaybackConfiguration {adDecisionServerUrl :: (Value Prelude.Text),
                           availSuppression :: (Prelude.Maybe AvailSuppressionProperty),
                           bumper :: (Prelude.Maybe BumperProperty),
                           cdnConfiguration :: (Prelude.Maybe CdnConfigurationProperty),
                           configurationAliases :: (Prelude.Maybe (Prelude.Map Prelude.Text JSON.Object)),
                           dashConfiguration :: (Prelude.Maybe DashConfigurationProperty),
                           hlsConfiguration :: (Prelude.Maybe HlsConfigurationProperty),
                           livePreRollConfiguration :: (Prelude.Maybe LivePreRollConfigurationProperty),
                           manifestProcessingRules :: (Prelude.Maybe ManifestProcessingRulesProperty),
                           name :: (Value Prelude.Text),
                           personalizationThresholdSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                           slateAdUrl :: (Prelude.Maybe (Value Prelude.Text)),
                           tags :: (Prelude.Maybe [Tag]),
                           transcodeProfileName :: (Prelude.Maybe (Value Prelude.Text)),
                           videoContentSourceUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlaybackConfiguration ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> PlaybackConfiguration
mkPlaybackConfiguration
  adDecisionServerUrl
  name
  videoContentSourceUrl
  = PlaybackConfiguration
      {adDecisionServerUrl = adDecisionServerUrl, name = name,
       videoContentSourceUrl = videoContentSourceUrl,
       availSuppression = Prelude.Nothing, bumper = Prelude.Nothing,
       cdnConfiguration = Prelude.Nothing,
       configurationAliases = Prelude.Nothing,
       dashConfiguration = Prelude.Nothing,
       hlsConfiguration = Prelude.Nothing,
       livePreRollConfiguration = Prelude.Nothing,
       manifestProcessingRules = Prelude.Nothing,
       personalizationThresholdSeconds = Prelude.Nothing,
       slateAdUrl = Prelude.Nothing, tags = Prelude.Nothing,
       transcodeProfileName = Prelude.Nothing}
instance ToResourceProperties PlaybackConfiguration where
  toResourceProperties PlaybackConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AdDecisionServerUrl" JSON..= adDecisionServerUrl,
                            "Name" JSON..= name,
                            "VideoContentSourceUrl" JSON..= videoContentSourceUrl]
                           (Prelude.catMaybes
                              [(JSON..=) "AvailSuppression" Prelude.<$> availSuppression,
                               (JSON..=) "Bumper" Prelude.<$> bumper,
                               (JSON..=) "CdnConfiguration" Prelude.<$> cdnConfiguration,
                               (JSON..=) "ConfigurationAliases" Prelude.<$> configurationAliases,
                               (JSON..=) "DashConfiguration" Prelude.<$> dashConfiguration,
                               (JSON..=) "HlsConfiguration" Prelude.<$> hlsConfiguration,
                               (JSON..=) "LivePreRollConfiguration"
                                 Prelude.<$> livePreRollConfiguration,
                               (JSON..=) "ManifestProcessingRules"
                                 Prelude.<$> manifestProcessingRules,
                               (JSON..=) "PersonalizationThresholdSeconds"
                                 Prelude.<$> personalizationThresholdSeconds,
                               (JSON..=) "SlateAdUrl" Prelude.<$> slateAdUrl,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TranscodeProfileName"
                                 Prelude.<$> transcodeProfileName]))}
instance JSON.ToJSON PlaybackConfiguration where
  toJSON PlaybackConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AdDecisionServerUrl" JSON..= adDecisionServerUrl,
               "Name" JSON..= name,
               "VideoContentSourceUrl" JSON..= videoContentSourceUrl]
              (Prelude.catMaybes
                 [(JSON..=) "AvailSuppression" Prelude.<$> availSuppression,
                  (JSON..=) "Bumper" Prelude.<$> bumper,
                  (JSON..=) "CdnConfiguration" Prelude.<$> cdnConfiguration,
                  (JSON..=) "ConfigurationAliases" Prelude.<$> configurationAliases,
                  (JSON..=) "DashConfiguration" Prelude.<$> dashConfiguration,
                  (JSON..=) "HlsConfiguration" Prelude.<$> hlsConfiguration,
                  (JSON..=) "LivePreRollConfiguration"
                    Prelude.<$> livePreRollConfiguration,
                  (JSON..=) "ManifestProcessingRules"
                    Prelude.<$> manifestProcessingRules,
                  (JSON..=) "PersonalizationThresholdSeconds"
                    Prelude.<$> personalizationThresholdSeconds,
                  (JSON..=) "SlateAdUrl" Prelude.<$> slateAdUrl,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TranscodeProfileName"
                    Prelude.<$> transcodeProfileName])))
instance Property "AdDecisionServerUrl" PlaybackConfiguration where
  type PropertyType "AdDecisionServerUrl" PlaybackConfiguration = Value Prelude.Text
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration {adDecisionServerUrl = newValue, ..}
instance Property "AvailSuppression" PlaybackConfiguration where
  type PropertyType "AvailSuppression" PlaybackConfiguration = AvailSuppressionProperty
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration
        {availSuppression = Prelude.pure newValue, ..}
instance Property "Bumper" PlaybackConfiguration where
  type PropertyType "Bumper" PlaybackConfiguration = BumperProperty
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration {bumper = Prelude.pure newValue, ..}
instance Property "CdnConfiguration" PlaybackConfiguration where
  type PropertyType "CdnConfiguration" PlaybackConfiguration = CdnConfigurationProperty
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration
        {cdnConfiguration = Prelude.pure newValue, ..}
instance Property "ConfigurationAliases" PlaybackConfiguration where
  type PropertyType "ConfigurationAliases" PlaybackConfiguration = Prelude.Map Prelude.Text JSON.Object
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration
        {configurationAliases = Prelude.pure newValue, ..}
instance Property "DashConfiguration" PlaybackConfiguration where
  type PropertyType "DashConfiguration" PlaybackConfiguration = DashConfigurationProperty
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration
        {dashConfiguration = Prelude.pure newValue, ..}
instance Property "HlsConfiguration" PlaybackConfiguration where
  type PropertyType "HlsConfiguration" PlaybackConfiguration = HlsConfigurationProperty
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration
        {hlsConfiguration = Prelude.pure newValue, ..}
instance Property "LivePreRollConfiguration" PlaybackConfiguration where
  type PropertyType "LivePreRollConfiguration" PlaybackConfiguration = LivePreRollConfigurationProperty
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration
        {livePreRollConfiguration = Prelude.pure newValue, ..}
instance Property "ManifestProcessingRules" PlaybackConfiguration where
  type PropertyType "ManifestProcessingRules" PlaybackConfiguration = ManifestProcessingRulesProperty
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration
        {manifestProcessingRules = Prelude.pure newValue, ..}
instance Property "Name" PlaybackConfiguration where
  type PropertyType "Name" PlaybackConfiguration = Value Prelude.Text
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration {name = newValue, ..}
instance Property "PersonalizationThresholdSeconds" PlaybackConfiguration where
  type PropertyType "PersonalizationThresholdSeconds" PlaybackConfiguration = Value Prelude.Integer
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration
        {personalizationThresholdSeconds = Prelude.pure newValue, ..}
instance Property "SlateAdUrl" PlaybackConfiguration where
  type PropertyType "SlateAdUrl" PlaybackConfiguration = Value Prelude.Text
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration {slateAdUrl = Prelude.pure newValue, ..}
instance Property "Tags" PlaybackConfiguration where
  type PropertyType "Tags" PlaybackConfiguration = [Tag]
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration {tags = Prelude.pure newValue, ..}
instance Property "TranscodeProfileName" PlaybackConfiguration where
  type PropertyType "TranscodeProfileName" PlaybackConfiguration = Value Prelude.Text
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration
        {transcodeProfileName = Prelude.pure newValue, ..}
instance Property "VideoContentSourceUrl" PlaybackConfiguration where
  type PropertyType "VideoContentSourceUrl" PlaybackConfiguration = Value Prelude.Text
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration {videoContentSourceUrl = newValue, ..}