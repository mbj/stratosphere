module Stratosphere.Bedrock.FlowVersion.FlowConditionalConnectionConfigurationProperty (
        FlowConditionalConnectionConfigurationProperty(..),
        mkFlowConditionalConnectionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowConditionalConnectionConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-flowconditionalconnectionconfiguration.html>
    FlowConditionalConnectionConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-flowconditionalconnectionconfiguration.html#cfn-bedrock-flowversion-flowconditionalconnectionconfiguration-condition>
                                                    condition :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowConditionalConnectionConfigurationProperty ::
  Value Prelude.Text
  -> FlowConditionalConnectionConfigurationProperty
mkFlowConditionalConnectionConfigurationProperty condition
  = FlowConditionalConnectionConfigurationProperty
      {condition = condition}
instance ToResourceProperties FlowConditionalConnectionConfigurationProperty where
  toResourceProperties
    FlowConditionalConnectionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.FlowConditionalConnectionConfiguration",
         supportsTags = Prelude.False,
         properties = ["Condition" JSON..= condition]}
instance JSON.ToJSON FlowConditionalConnectionConfigurationProperty where
  toJSON FlowConditionalConnectionConfigurationProperty {..}
    = JSON.object ["Condition" JSON..= condition]
instance Property "Condition" FlowConditionalConnectionConfigurationProperty where
  type PropertyType "Condition" FlowConditionalConnectionConfigurationProperty = Value Prelude.Text
  set newValue FlowConditionalConnectionConfigurationProperty {}
    = FlowConditionalConnectionConfigurationProperty
        {condition = newValue, ..}