module Stratosphere.RDS.DBInstance.ProcessorFeatureProperty (
        ProcessorFeatureProperty(..), mkProcessorFeatureProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProcessorFeatureProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-processorfeature.html>
    ProcessorFeatureProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-processorfeature.html#cfn-rds-dbinstance-processorfeature-name>
                              name :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-processorfeature.html#cfn-rds-dbinstance-processorfeature-value>
                              value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProcessorFeatureProperty :: ProcessorFeatureProperty
mkProcessorFeatureProperty
  = ProcessorFeatureProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties ProcessorFeatureProperty where
  toResourceProperties ProcessorFeatureProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBInstance.ProcessorFeature",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ProcessorFeatureProperty where
  toJSON ProcessorFeatureProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" ProcessorFeatureProperty where
  type PropertyType "Name" ProcessorFeatureProperty = Value Prelude.Text
  set newValue ProcessorFeatureProperty {..}
    = ProcessorFeatureProperty {name = Prelude.pure newValue, ..}
instance Property "Value" ProcessorFeatureProperty where
  type PropertyType "Value" ProcessorFeatureProperty = Value Prelude.Text
  set newValue ProcessorFeatureProperty {..}
    = ProcessorFeatureProperty {value = Prelude.pure newValue, ..}