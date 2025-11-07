module Stratosphere.Batch.ServiceEnvironment (
        module Exports, ServiceEnvironment(..), mkServiceEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.ServiceEnvironment.CapacityLimitProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceEnvironment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-serviceenvironment.html>
    ServiceEnvironment {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-serviceenvironment.html#cfn-batch-serviceenvironment-capacitylimits>
                        capacityLimits :: [CapacityLimitProperty],
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-serviceenvironment.html#cfn-batch-serviceenvironment-serviceenvironmentname>
                        serviceEnvironmentName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-serviceenvironment.html#cfn-batch-serviceenvironment-serviceenvironmenttype>
                        serviceEnvironmentType :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-serviceenvironment.html#cfn-batch-serviceenvironment-state>
                        state :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-serviceenvironment.html#cfn-batch-serviceenvironment-tags>
                        tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceEnvironment ::
  [CapacityLimitProperty] -> Value Prelude.Text -> ServiceEnvironment
mkServiceEnvironment capacityLimits serviceEnvironmentType
  = ServiceEnvironment
      {haddock_workaround_ = (), capacityLimits = capacityLimits,
       serviceEnvironmentType = serviceEnvironmentType,
       serviceEnvironmentName = Prelude.Nothing, state = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ServiceEnvironment where
  toResourceProperties ServiceEnvironment {..}
    = ResourceProperties
        {awsType = "AWS::Batch::ServiceEnvironment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CapacityLimits" JSON..= capacityLimits,
                            "ServiceEnvironmentType" JSON..= serviceEnvironmentType]
                           (Prelude.catMaybes
                              [(JSON..=) "ServiceEnvironmentName"
                                 Prelude.<$> serviceEnvironmentName,
                               (JSON..=) "State" Prelude.<$> state,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ServiceEnvironment where
  toJSON ServiceEnvironment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CapacityLimits" JSON..= capacityLimits,
               "ServiceEnvironmentType" JSON..= serviceEnvironmentType]
              (Prelude.catMaybes
                 [(JSON..=) "ServiceEnvironmentName"
                    Prelude.<$> serviceEnvironmentName,
                  (JSON..=) "State" Prelude.<$> state,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CapacityLimits" ServiceEnvironment where
  type PropertyType "CapacityLimits" ServiceEnvironment = [CapacityLimitProperty]
  set newValue ServiceEnvironment {..}
    = ServiceEnvironment {capacityLimits = newValue, ..}
instance Property "ServiceEnvironmentName" ServiceEnvironment where
  type PropertyType "ServiceEnvironmentName" ServiceEnvironment = Value Prelude.Text
  set newValue ServiceEnvironment {..}
    = ServiceEnvironment
        {serviceEnvironmentName = Prelude.pure newValue, ..}
instance Property "ServiceEnvironmentType" ServiceEnvironment where
  type PropertyType "ServiceEnvironmentType" ServiceEnvironment = Value Prelude.Text
  set newValue ServiceEnvironment {..}
    = ServiceEnvironment {serviceEnvironmentType = newValue, ..}
instance Property "State" ServiceEnvironment where
  type PropertyType "State" ServiceEnvironment = Value Prelude.Text
  set newValue ServiceEnvironment {..}
    = ServiceEnvironment {state = Prelude.pure newValue, ..}
instance Property "Tags" ServiceEnvironment where
  type PropertyType "Tags" ServiceEnvironment = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ServiceEnvironment {..}
    = ServiceEnvironment {tags = Prelude.pure newValue, ..}