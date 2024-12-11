module Stratosphere.Bedrock.FlowVersion.ConditionFlowNodeConfigurationProperty (
        module Exports, ConditionFlowNodeConfigurationProperty(..),
        mkConditionFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.FlowConditionProperty as Exports
import Stratosphere.ResourceProperties
data ConditionFlowNodeConfigurationProperty
  = ConditionFlowNodeConfigurationProperty {conditions :: [FlowConditionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionFlowNodeConfigurationProperty ::
  [FlowConditionProperty] -> ConditionFlowNodeConfigurationProperty
mkConditionFlowNodeConfigurationProperty conditions
  = ConditionFlowNodeConfigurationProperty {conditions = conditions}
instance ToResourceProperties ConditionFlowNodeConfigurationProperty where
  toResourceProperties ConditionFlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.ConditionFlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = ["Conditions" JSON..= conditions]}
instance JSON.ToJSON ConditionFlowNodeConfigurationProperty where
  toJSON ConditionFlowNodeConfigurationProperty {..}
    = JSON.object ["Conditions" JSON..= conditions]
instance Property "Conditions" ConditionFlowNodeConfigurationProperty where
  type PropertyType "Conditions" ConditionFlowNodeConfigurationProperty = [FlowConditionProperty]
  set newValue ConditionFlowNodeConfigurationProperty {}
    = ConditionFlowNodeConfigurationProperty
        {conditions = newValue, ..}