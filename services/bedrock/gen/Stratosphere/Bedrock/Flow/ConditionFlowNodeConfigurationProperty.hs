module Stratosphere.Bedrock.Flow.ConditionFlowNodeConfigurationProperty (
        module Exports, ConditionFlowNodeConfigurationProperty(..),
        mkConditionFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.FlowConditionProperty as Exports
import Stratosphere.ResourceProperties
data ConditionFlowNodeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-conditionflownodeconfiguration.html>
    ConditionFlowNodeConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-conditionflownodeconfiguration.html#cfn-bedrock-flow-conditionflownodeconfiguration-conditions>
                                            conditions :: [FlowConditionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionFlowNodeConfigurationProperty ::
  [FlowConditionProperty] -> ConditionFlowNodeConfigurationProperty
mkConditionFlowNodeConfigurationProperty conditions
  = ConditionFlowNodeConfigurationProperty
      {haddock_workaround_ = (), conditions = conditions}
instance ToResourceProperties ConditionFlowNodeConfigurationProperty where
  toResourceProperties ConditionFlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.ConditionFlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = ["Conditions" JSON..= conditions]}
instance JSON.ToJSON ConditionFlowNodeConfigurationProperty where
  toJSON ConditionFlowNodeConfigurationProperty {..}
    = JSON.object ["Conditions" JSON..= conditions]
instance Property "Conditions" ConditionFlowNodeConfigurationProperty where
  type PropertyType "Conditions" ConditionFlowNodeConfigurationProperty = [FlowConditionProperty]
  set newValue ConditionFlowNodeConfigurationProperty {..}
    = ConditionFlowNodeConfigurationProperty
        {conditions = newValue, ..}