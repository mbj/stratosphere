module Stratosphere.MediaTailor.PlaybackConfiguration.LogConfigurationProperty (
        module Exports, LogConfigurationProperty(..),
        mkLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.AdsInteractionLogProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.ManifestServiceInteractionLogProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-logconfiguration.html>
    LogConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-logconfiguration.html#cfn-mediatailor-playbackconfiguration-logconfiguration-adsinteractionlog>
                              adsInteractionLog :: (Prelude.Maybe AdsInteractionLogProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-logconfiguration.html#cfn-mediatailor-playbackconfiguration-logconfiguration-enabledloggingstrategies>
                              enabledLoggingStrategies :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-logconfiguration.html#cfn-mediatailor-playbackconfiguration-logconfiguration-manifestserviceinteractionlog>
                              manifestServiceInteractionLog :: (Prelude.Maybe ManifestServiceInteractionLogProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-logconfiguration.html#cfn-mediatailor-playbackconfiguration-logconfiguration-percentenabled>
                              percentEnabled :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogConfigurationProperty ::
  Value Prelude.Integer -> LogConfigurationProperty
mkLogConfigurationProperty percentEnabled
  = LogConfigurationProperty
      {haddock_workaround_ = (), percentEnabled = percentEnabled,
       adsInteractionLog = Prelude.Nothing,
       enabledLoggingStrategies = Prelude.Nothing,
       manifestServiceInteractionLog = Prelude.Nothing}
instance ToResourceProperties LogConfigurationProperty where
  toResourceProperties LogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.LogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PercentEnabled" JSON..= percentEnabled]
                           (Prelude.catMaybes
                              [(JSON..=) "AdsInteractionLog" Prelude.<$> adsInteractionLog,
                               (JSON..=) "EnabledLoggingStrategies"
                                 Prelude.<$> enabledLoggingStrategies,
                               (JSON..=) "ManifestServiceInteractionLog"
                                 Prelude.<$> manifestServiceInteractionLog]))}
instance JSON.ToJSON LogConfigurationProperty where
  toJSON LogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PercentEnabled" JSON..= percentEnabled]
              (Prelude.catMaybes
                 [(JSON..=) "AdsInteractionLog" Prelude.<$> adsInteractionLog,
                  (JSON..=) "EnabledLoggingStrategies"
                    Prelude.<$> enabledLoggingStrategies,
                  (JSON..=) "ManifestServiceInteractionLog"
                    Prelude.<$> manifestServiceInteractionLog])))
instance Property "AdsInteractionLog" LogConfigurationProperty where
  type PropertyType "AdsInteractionLog" LogConfigurationProperty = AdsInteractionLogProperty
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty
        {adsInteractionLog = Prelude.pure newValue, ..}
instance Property "EnabledLoggingStrategies" LogConfigurationProperty where
  type PropertyType "EnabledLoggingStrategies" LogConfigurationProperty = ValueList Prelude.Text
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty
        {enabledLoggingStrategies = Prelude.pure newValue, ..}
instance Property "ManifestServiceInteractionLog" LogConfigurationProperty where
  type PropertyType "ManifestServiceInteractionLog" LogConfigurationProperty = ManifestServiceInteractionLogProperty
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty
        {manifestServiceInteractionLog = Prelude.pure newValue, ..}
instance Property "PercentEnabled" LogConfigurationProperty where
  type PropertyType "PercentEnabled" LogConfigurationProperty = Value Prelude.Integer
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty {percentEnabled = newValue, ..}