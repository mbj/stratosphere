module Stratosphere.MediaTailor.PlaybackConfiguration (
        module Exports, PlaybackConfiguration(..), mkPlaybackConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.AdConditioningConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.AvailSuppressionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.BumperProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.CdnConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.DashConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.HlsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.LivePreRollConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.LogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.ManifestProcessingRulesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PlaybackConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html>
    PlaybackConfiguration {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-adconditioningconfiguration>
                           adConditioningConfiguration :: (Prelude.Maybe AdConditioningConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-addecisionserverurl>
                           adDecisionServerUrl :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-availsuppression>
                           availSuppression :: (Prelude.Maybe AvailSuppressionProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-bumper>
                           bumper :: (Prelude.Maybe BumperProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-cdnconfiguration>
                           cdnConfiguration :: (Prelude.Maybe CdnConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-configurationaliases>
                           configurationAliases :: (Prelude.Maybe (Prelude.Map Prelude.Text JSON.Object)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-dashconfiguration>
                           dashConfiguration :: (Prelude.Maybe DashConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-hlsconfiguration>
                           hlsConfiguration :: (Prelude.Maybe HlsConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-insertionmode>
                           insertionMode :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-liveprerollconfiguration>
                           livePreRollConfiguration :: (Prelude.Maybe LivePreRollConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-logconfiguration>
                           logConfiguration :: (Prelude.Maybe LogConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-manifestprocessingrules>
                           manifestProcessingRules :: (Prelude.Maybe ManifestProcessingRulesProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-name>
                           name :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-personalizationthresholdseconds>
                           personalizationThresholdSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-slateadurl>
                           slateAdUrl :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-tags>
                           tags :: (Prelude.Maybe [Tag]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-transcodeprofilename>
                           transcodeProfileName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediatailor-playbackconfiguration.html#cfn-mediatailor-playbackconfiguration-videocontentsourceurl>
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
      {haddock_workaround_ = (),
       adDecisionServerUrl = adDecisionServerUrl, name = name,
       videoContentSourceUrl = videoContentSourceUrl,
       adConditioningConfiguration = Prelude.Nothing,
       availSuppression = Prelude.Nothing, bumper = Prelude.Nothing,
       cdnConfiguration = Prelude.Nothing,
       configurationAliases = Prelude.Nothing,
       dashConfiguration = Prelude.Nothing,
       hlsConfiguration = Prelude.Nothing,
       insertionMode = Prelude.Nothing,
       livePreRollConfiguration = Prelude.Nothing,
       logConfiguration = Prelude.Nothing,
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
                              [(JSON..=) "AdConditioningConfiguration"
                                 Prelude.<$> adConditioningConfiguration,
                               (JSON..=) "AvailSuppression" Prelude.<$> availSuppression,
                               (JSON..=) "Bumper" Prelude.<$> bumper,
                               (JSON..=) "CdnConfiguration" Prelude.<$> cdnConfiguration,
                               (JSON..=) "ConfigurationAliases" Prelude.<$> configurationAliases,
                               (JSON..=) "DashConfiguration" Prelude.<$> dashConfiguration,
                               (JSON..=) "HlsConfiguration" Prelude.<$> hlsConfiguration,
                               (JSON..=) "InsertionMode" Prelude.<$> insertionMode,
                               (JSON..=) "LivePreRollConfiguration"
                                 Prelude.<$> livePreRollConfiguration,
                               (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
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
                 [(JSON..=) "AdConditioningConfiguration"
                    Prelude.<$> adConditioningConfiguration,
                  (JSON..=) "AvailSuppression" Prelude.<$> availSuppression,
                  (JSON..=) "Bumper" Prelude.<$> bumper,
                  (JSON..=) "CdnConfiguration" Prelude.<$> cdnConfiguration,
                  (JSON..=) "ConfigurationAliases" Prelude.<$> configurationAliases,
                  (JSON..=) "DashConfiguration" Prelude.<$> dashConfiguration,
                  (JSON..=) "HlsConfiguration" Prelude.<$> hlsConfiguration,
                  (JSON..=) "InsertionMode" Prelude.<$> insertionMode,
                  (JSON..=) "LivePreRollConfiguration"
                    Prelude.<$> livePreRollConfiguration,
                  (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                  (JSON..=) "ManifestProcessingRules"
                    Prelude.<$> manifestProcessingRules,
                  (JSON..=) "PersonalizationThresholdSeconds"
                    Prelude.<$> personalizationThresholdSeconds,
                  (JSON..=) "SlateAdUrl" Prelude.<$> slateAdUrl,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TranscodeProfileName"
                    Prelude.<$> transcodeProfileName])))
instance Property "AdConditioningConfiguration" PlaybackConfiguration where
  type PropertyType "AdConditioningConfiguration" PlaybackConfiguration = AdConditioningConfigurationProperty
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration
        {adConditioningConfiguration = Prelude.pure newValue, ..}
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
instance Property "InsertionMode" PlaybackConfiguration where
  type PropertyType "InsertionMode" PlaybackConfiguration = Value Prelude.Text
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration {insertionMode = Prelude.pure newValue, ..}
instance Property "LivePreRollConfiguration" PlaybackConfiguration where
  type PropertyType "LivePreRollConfiguration" PlaybackConfiguration = LivePreRollConfigurationProperty
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration
        {livePreRollConfiguration = Prelude.pure newValue, ..}
instance Property "LogConfiguration" PlaybackConfiguration where
  type PropertyType "LogConfiguration" PlaybackConfiguration = LogConfigurationProperty
  set newValue PlaybackConfiguration {..}
    = PlaybackConfiguration
        {logConfiguration = Prelude.pure newValue, ..}
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