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
  = LivePreRollConfigurationProperty {adDecisionServerUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                      maxDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
mkLivePreRollConfigurationProperty ::
  LivePreRollConfigurationProperty
mkLivePreRollConfigurationProperty
  = LivePreRollConfigurationProperty
      {adDecisionServerUrl = Prelude.Nothing,
       maxDurationSeconds = Prelude.Nothing}
instance ToResourceProperties LivePreRollConfigurationProperty where
  toResourceProperties LivePreRollConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.LivePreRollConfiguration",
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