module Stratosphere.BedrockAgentCore.CodeInterpreterCustom (
        module Exports, CodeInterpreterCustom(..), mkCodeInterpreterCustom
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.CodeInterpreterCustom.CodeInterpreterNetworkConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeInterpreterCustom
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-codeinterpretercustom.html>
    CodeInterpreterCustom {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-codeinterpretercustom.html#cfn-bedrockagentcore-codeinterpretercustom-description>
                           description :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-codeinterpretercustom.html#cfn-bedrockagentcore-codeinterpretercustom-executionrolearn>
                           executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-codeinterpretercustom.html#cfn-bedrockagentcore-codeinterpretercustom-name>
                           name :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-codeinterpretercustom.html#cfn-bedrockagentcore-codeinterpretercustom-networkconfiguration>
                           networkConfiguration :: CodeInterpreterNetworkConfigurationProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-codeinterpretercustom.html#cfn-bedrockagentcore-codeinterpretercustom-tags>
                           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeInterpreterCustom ::
  Value Prelude.Text
  -> CodeInterpreterNetworkConfigurationProperty
     -> CodeInterpreterCustom
mkCodeInterpreterCustom name networkConfiguration
  = CodeInterpreterCustom
      {haddock_workaround_ = (), name = name,
       networkConfiguration = networkConfiguration,
       description = Prelude.Nothing, executionRoleArn = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CodeInterpreterCustom where
  toResourceProperties CodeInterpreterCustom {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::CodeInterpreterCustom",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name,
                            "NetworkConfiguration" JSON..= networkConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CodeInterpreterCustom where
  toJSON CodeInterpreterCustom {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name,
               "NetworkConfiguration" JSON..= networkConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" CodeInterpreterCustom where
  type PropertyType "Description" CodeInterpreterCustom = Value Prelude.Text
  set newValue CodeInterpreterCustom {..}
    = CodeInterpreterCustom {description = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" CodeInterpreterCustom where
  type PropertyType "ExecutionRoleArn" CodeInterpreterCustom = Value Prelude.Text
  set newValue CodeInterpreterCustom {..}
    = CodeInterpreterCustom
        {executionRoleArn = Prelude.pure newValue, ..}
instance Property "Name" CodeInterpreterCustom where
  type PropertyType "Name" CodeInterpreterCustom = Value Prelude.Text
  set newValue CodeInterpreterCustom {..}
    = CodeInterpreterCustom {name = newValue, ..}
instance Property "NetworkConfiguration" CodeInterpreterCustom where
  type PropertyType "NetworkConfiguration" CodeInterpreterCustom = CodeInterpreterNetworkConfigurationProperty
  set newValue CodeInterpreterCustom {..}
    = CodeInterpreterCustom {networkConfiguration = newValue, ..}
instance Property "Tags" CodeInterpreterCustom where
  type PropertyType "Tags" CodeInterpreterCustom = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CodeInterpreterCustom {..}
    = CodeInterpreterCustom {tags = Prelude.pure newValue, ..}