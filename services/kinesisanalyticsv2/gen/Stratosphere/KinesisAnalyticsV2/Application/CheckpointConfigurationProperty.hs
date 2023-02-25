module Stratosphere.KinesisAnalyticsV2.Application.CheckpointConfigurationProperty (
        CheckpointConfigurationProperty(..),
        mkCheckpointConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CheckpointConfigurationProperty
  = CheckpointConfigurationProperty {checkpointInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                                     checkpointingEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                     configurationType :: (Value Prelude.Text),
                                     minPauseBetweenCheckpoints :: (Prelude.Maybe (Value Prelude.Integer))}
mkCheckpointConfigurationProperty ::
  Value Prelude.Text -> CheckpointConfigurationProperty
mkCheckpointConfigurationProperty configurationType
  = CheckpointConfigurationProperty
      {configurationType = configurationType,
       checkpointInterval = Prelude.Nothing,
       checkpointingEnabled = Prelude.Nothing,
       minPauseBetweenCheckpoints = Prelude.Nothing}
instance ToResourceProperties CheckpointConfigurationProperty where
  toResourceProperties CheckpointConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.CheckpointConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigurationType" JSON..= configurationType]
                           (Prelude.catMaybes
                              [(JSON..=) "CheckpointInterval" Prelude.<$> checkpointInterval,
                               (JSON..=) "CheckpointingEnabled" Prelude.<$> checkpointingEnabled,
                               (JSON..=) "MinPauseBetweenCheckpoints"
                                 Prelude.<$> minPauseBetweenCheckpoints]))}
instance JSON.ToJSON CheckpointConfigurationProperty where
  toJSON CheckpointConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigurationType" JSON..= configurationType]
              (Prelude.catMaybes
                 [(JSON..=) "CheckpointInterval" Prelude.<$> checkpointInterval,
                  (JSON..=) "CheckpointingEnabled" Prelude.<$> checkpointingEnabled,
                  (JSON..=) "MinPauseBetweenCheckpoints"
                    Prelude.<$> minPauseBetweenCheckpoints])))
instance Property "CheckpointInterval" CheckpointConfigurationProperty where
  type PropertyType "CheckpointInterval" CheckpointConfigurationProperty = Value Prelude.Integer
  set newValue CheckpointConfigurationProperty {..}
    = CheckpointConfigurationProperty
        {checkpointInterval = Prelude.pure newValue, ..}
instance Property "CheckpointingEnabled" CheckpointConfigurationProperty where
  type PropertyType "CheckpointingEnabled" CheckpointConfigurationProperty = Value Prelude.Bool
  set newValue CheckpointConfigurationProperty {..}
    = CheckpointConfigurationProperty
        {checkpointingEnabled = Prelude.pure newValue, ..}
instance Property "ConfigurationType" CheckpointConfigurationProperty where
  type PropertyType "ConfigurationType" CheckpointConfigurationProperty = Value Prelude.Text
  set newValue CheckpointConfigurationProperty {..}
    = CheckpointConfigurationProperty
        {configurationType = newValue, ..}
instance Property "MinPauseBetweenCheckpoints" CheckpointConfigurationProperty where
  type PropertyType "MinPauseBetweenCheckpoints" CheckpointConfigurationProperty = Value Prelude.Integer
  set newValue CheckpointConfigurationProperty {..}
    = CheckpointConfigurationProperty
        {minPauseBetweenCheckpoints = Prelude.pure newValue, ..}