module Stratosphere.SageMaker.FeatureGroup.ThroughputConfigProperty (
        ThroughputConfigProperty(..), mkThroughputConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThroughputConfigProperty
  = ThroughputConfigProperty {provisionedReadCapacityUnits :: (Prelude.Maybe (Value Prelude.Integer)),
                              provisionedWriteCapacityUnits :: (Prelude.Maybe (Value Prelude.Integer)),
                              throughputMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThroughputConfigProperty ::
  Value Prelude.Text -> ThroughputConfigProperty
mkThroughputConfigProperty throughputMode
  = ThroughputConfigProperty
      {throughputMode = throughputMode,
       provisionedReadCapacityUnits = Prelude.Nothing,
       provisionedWriteCapacityUnits = Prelude.Nothing}
instance ToResourceProperties ThroughputConfigProperty where
  toResourceProperties ThroughputConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::FeatureGroup.ThroughputConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ThroughputMode" JSON..= throughputMode]
                           (Prelude.catMaybes
                              [(JSON..=) "ProvisionedReadCapacityUnits"
                                 Prelude.<$> provisionedReadCapacityUnits,
                               (JSON..=) "ProvisionedWriteCapacityUnits"
                                 Prelude.<$> provisionedWriteCapacityUnits]))}
instance JSON.ToJSON ThroughputConfigProperty where
  toJSON ThroughputConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ThroughputMode" JSON..= throughputMode]
              (Prelude.catMaybes
                 [(JSON..=) "ProvisionedReadCapacityUnits"
                    Prelude.<$> provisionedReadCapacityUnits,
                  (JSON..=) "ProvisionedWriteCapacityUnits"
                    Prelude.<$> provisionedWriteCapacityUnits])))
instance Property "ProvisionedReadCapacityUnits" ThroughputConfigProperty where
  type PropertyType "ProvisionedReadCapacityUnits" ThroughputConfigProperty = Value Prelude.Integer
  set newValue ThroughputConfigProperty {..}
    = ThroughputConfigProperty
        {provisionedReadCapacityUnits = Prelude.pure newValue, ..}
instance Property "ProvisionedWriteCapacityUnits" ThroughputConfigProperty where
  type PropertyType "ProvisionedWriteCapacityUnits" ThroughputConfigProperty = Value Prelude.Integer
  set newValue ThroughputConfigProperty {..}
    = ThroughputConfigProperty
        {provisionedWriteCapacityUnits = Prelude.pure newValue, ..}
instance Property "ThroughputMode" ThroughputConfigProperty where
  type PropertyType "ThroughputMode" ThroughputConfigProperty = Value Prelude.Text
  set newValue ThroughputConfigProperty {..}
    = ThroughputConfigProperty {throughputMode = newValue, ..}