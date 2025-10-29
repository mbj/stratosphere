module Stratosphere.LookoutEquipment.InferenceScheduler.InputNameConfigurationProperty (
        InputNameConfigurationProperty(..),
        mkInputNameConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputNameConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutequipment-inferencescheduler-inputnameconfiguration.html>
    InputNameConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutequipment-inferencescheduler-inputnameconfiguration.html#cfn-lookoutequipment-inferencescheduler-inputnameconfiguration-componenttimestampdelimiter>
                                    componentTimestampDelimiter :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutequipment-inferencescheduler-inputnameconfiguration.html#cfn-lookoutequipment-inferencescheduler-inputnameconfiguration-timestampformat>
                                    timestampFormat :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputNameConfigurationProperty :: InputNameConfigurationProperty
mkInputNameConfigurationProperty
  = InputNameConfigurationProperty
      {componentTimestampDelimiter = Prelude.Nothing,
       timestampFormat = Prelude.Nothing}
instance ToResourceProperties InputNameConfigurationProperty where
  toResourceProperties InputNameConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutEquipment::InferenceScheduler.InputNameConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComponentTimestampDelimiter"
                              Prelude.<$> componentTimestampDelimiter,
                            (JSON..=) "TimestampFormat" Prelude.<$> timestampFormat])}
instance JSON.ToJSON InputNameConfigurationProperty where
  toJSON InputNameConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComponentTimestampDelimiter"
                 Prelude.<$> componentTimestampDelimiter,
               (JSON..=) "TimestampFormat" Prelude.<$> timestampFormat]))
instance Property "ComponentTimestampDelimiter" InputNameConfigurationProperty where
  type PropertyType "ComponentTimestampDelimiter" InputNameConfigurationProperty = Value Prelude.Text
  set newValue InputNameConfigurationProperty {..}
    = InputNameConfigurationProperty
        {componentTimestampDelimiter = Prelude.pure newValue, ..}
instance Property "TimestampFormat" InputNameConfigurationProperty where
  type PropertyType "TimestampFormat" InputNameConfigurationProperty = Value Prelude.Text
  set newValue InputNameConfigurationProperty {..}
    = InputNameConfigurationProperty
        {timestampFormat = Prelude.pure newValue, ..}