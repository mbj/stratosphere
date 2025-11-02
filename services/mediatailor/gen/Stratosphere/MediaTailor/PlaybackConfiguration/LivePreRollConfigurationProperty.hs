module Stratosphere.MediaTailor.PlaybackConfiguration.LivePreRollConfigurationProperty (
        LivePreRollConfigurationProperty(..),
        mkLivePreRollConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LivePreRollConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-liveprerollconfiguration.html>
    LivePreRollConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-liveprerollconfiguration.html#cfn-mediatailor-playbackconfiguration-liveprerollconfiguration-addecisionserverurl>
                                      adDecisionServerUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-liveprerollconfiguration.html#cfn-mediatailor-playbackconfiguration-liveprerollconfiguration-maxdurationseconds>
                                      maxDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLivePreRollConfigurationProperty ::
  LivePreRollConfigurationProperty
mkLivePreRollConfigurationProperty
  = LivePreRollConfigurationProperty
      {haddock_workaround_ = (), adDecisionServerUrl = Prelude.Nothing,
       maxDurationSeconds = Prelude.Nothing}
instance ToResourceProperties LivePreRollConfigurationProperty where
  toResourceProperties LivePreRollConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.LivePreRollConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdDecisionServerUrl" Prelude.<$> adDecisionServerUrl,
                            (JSON..=) "MaxDurationSeconds" Prelude.<$> maxDurationSeconds])}
instance JSON.ToJSON LivePreRollConfigurationProperty where
  toJSON LivePreRollConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdDecisionServerUrl" Prelude.<$> adDecisionServerUrl,
               (JSON..=) "MaxDurationSeconds" Prelude.<$> maxDurationSeconds]))
instance Property "AdDecisionServerUrl" LivePreRollConfigurationProperty where
  type PropertyType "AdDecisionServerUrl" LivePreRollConfigurationProperty = Value Prelude.Text
  set newValue LivePreRollConfigurationProperty {..}
    = LivePreRollConfigurationProperty
        {adDecisionServerUrl = Prelude.pure newValue, ..}
instance Property "MaxDurationSeconds" LivePreRollConfigurationProperty where
  type PropertyType "MaxDurationSeconds" LivePreRollConfigurationProperty = Value Prelude.Integer
  set newValue LivePreRollConfigurationProperty {..}
    = LivePreRollConfigurationProperty
        {maxDurationSeconds = Prelude.pure newValue, ..}