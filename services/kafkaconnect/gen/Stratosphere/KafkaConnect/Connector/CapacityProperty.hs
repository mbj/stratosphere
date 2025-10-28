module Stratosphere.KafkaConnect.Connector.CapacityProperty (
        module Exports, CapacityProperty(..), mkCapacityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.AutoScalingProperty as Exports
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.ProvisionedCapacityProperty as Exports
import Stratosphere.ResourceProperties
data CapacityProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-capacity.html>
    CapacityProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-capacity.html#cfn-kafkaconnect-connector-capacity-autoscaling>
                      autoScaling :: (Prelude.Maybe AutoScalingProperty),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-capacity.html#cfn-kafkaconnect-connector-capacity-provisionedcapacity>
                      provisionedCapacity :: (Prelude.Maybe ProvisionedCapacityProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityProperty :: CapacityProperty
mkCapacityProperty
  = CapacityProperty
      {autoScaling = Prelude.Nothing,
       provisionedCapacity = Prelude.Nothing}
instance ToResourceProperties CapacityProperty where
  toResourceProperties CapacityProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.Capacity",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoScaling" Prelude.<$> autoScaling,
                            (JSON..=) "ProvisionedCapacity" Prelude.<$> provisionedCapacity])}
instance JSON.ToJSON CapacityProperty where
  toJSON CapacityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoScaling" Prelude.<$> autoScaling,
               (JSON..=) "ProvisionedCapacity" Prelude.<$> provisionedCapacity]))
instance Property "AutoScaling" CapacityProperty where
  type PropertyType "AutoScaling" CapacityProperty = AutoScalingProperty
  set newValue CapacityProperty {..}
    = CapacityProperty {autoScaling = Prelude.pure newValue, ..}
instance Property "ProvisionedCapacity" CapacityProperty where
  type PropertyType "ProvisionedCapacity" CapacityProperty = ProvisionedCapacityProperty
  set newValue CapacityProperty {..}
    = CapacityProperty
        {provisionedCapacity = Prelude.pure newValue, ..}