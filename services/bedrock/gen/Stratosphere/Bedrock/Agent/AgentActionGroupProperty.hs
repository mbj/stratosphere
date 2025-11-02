module Stratosphere.Bedrock.Agent.AgentActionGroupProperty (
        module Exports, AgentActionGroupProperty(..),
        mkAgentActionGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.APISchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.ActionGroupExecutorProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.FunctionSchemaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AgentActionGroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentactiongroup.html>
    AgentActionGroupProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentactiongroup.html#cfn-bedrock-agent-agentactiongroup-actiongroupexecutor>
                              actionGroupExecutor :: (Prelude.Maybe ActionGroupExecutorProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentactiongroup.html#cfn-bedrock-agent-agentactiongroup-actiongroupname>
                              actionGroupName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentactiongroup.html#cfn-bedrock-agent-agentactiongroup-actiongroupstate>
                              actionGroupState :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentactiongroup.html#cfn-bedrock-agent-agentactiongroup-apischema>
                              apiSchema :: (Prelude.Maybe APISchemaProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentactiongroup.html#cfn-bedrock-agent-agentactiongroup-description>
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentactiongroup.html#cfn-bedrock-agent-agentactiongroup-functionschema>
                              functionSchema :: (Prelude.Maybe FunctionSchemaProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentactiongroup.html#cfn-bedrock-agent-agentactiongroup-parentactiongroupsignature>
                              parentActionGroupSignature :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentactiongroup.html#cfn-bedrock-agent-agentactiongroup-skipresourceinusecheckondelete>
                              skipResourceInUseCheckOnDelete :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentActionGroupProperty ::
  Value Prelude.Text -> AgentActionGroupProperty
mkAgentActionGroupProperty actionGroupName
  = AgentActionGroupProperty
      {haddock_workaround_ = (), actionGroupName = actionGroupName,
       actionGroupExecutor = Prelude.Nothing,
       actionGroupState = Prelude.Nothing, apiSchema = Prelude.Nothing,
       description = Prelude.Nothing, functionSchema = Prelude.Nothing,
       parentActionGroupSignature = Prelude.Nothing,
       skipResourceInUseCheckOnDelete = Prelude.Nothing}
instance ToResourceProperties AgentActionGroupProperty where
  toResourceProperties AgentActionGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.AgentActionGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionGroupName" JSON..= actionGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionGroupExecutor" Prelude.<$> actionGroupExecutor,
                               (JSON..=) "ActionGroupState" Prelude.<$> actionGroupState,
                               (JSON..=) "ApiSchema" Prelude.<$> apiSchema,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FunctionSchema" Prelude.<$> functionSchema,
                               (JSON..=) "ParentActionGroupSignature"
                                 Prelude.<$> parentActionGroupSignature,
                               (JSON..=) "SkipResourceInUseCheckOnDelete"
                                 Prelude.<$> skipResourceInUseCheckOnDelete]))}
instance JSON.ToJSON AgentActionGroupProperty where
  toJSON AgentActionGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionGroupName" JSON..= actionGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "ActionGroupExecutor" Prelude.<$> actionGroupExecutor,
                  (JSON..=) "ActionGroupState" Prelude.<$> actionGroupState,
                  (JSON..=) "ApiSchema" Prelude.<$> apiSchema,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FunctionSchema" Prelude.<$> functionSchema,
                  (JSON..=) "ParentActionGroupSignature"
                    Prelude.<$> parentActionGroupSignature,
                  (JSON..=) "SkipResourceInUseCheckOnDelete"
                    Prelude.<$> skipResourceInUseCheckOnDelete])))
instance Property "ActionGroupExecutor" AgentActionGroupProperty where
  type PropertyType "ActionGroupExecutor" AgentActionGroupProperty = ActionGroupExecutorProperty
  set newValue AgentActionGroupProperty {..}
    = AgentActionGroupProperty
        {actionGroupExecutor = Prelude.pure newValue, ..}
instance Property "ActionGroupName" AgentActionGroupProperty where
  type PropertyType "ActionGroupName" AgentActionGroupProperty = Value Prelude.Text
  set newValue AgentActionGroupProperty {..}
    = AgentActionGroupProperty {actionGroupName = newValue, ..}
instance Property "ActionGroupState" AgentActionGroupProperty where
  type PropertyType "ActionGroupState" AgentActionGroupProperty = Value Prelude.Text
  set newValue AgentActionGroupProperty {..}
    = AgentActionGroupProperty
        {actionGroupState = Prelude.pure newValue, ..}
instance Property "ApiSchema" AgentActionGroupProperty where
  type PropertyType "ApiSchema" AgentActionGroupProperty = APISchemaProperty
  set newValue AgentActionGroupProperty {..}
    = AgentActionGroupProperty {apiSchema = Prelude.pure newValue, ..}
instance Property "Description" AgentActionGroupProperty where
  type PropertyType "Description" AgentActionGroupProperty = Value Prelude.Text
  set newValue AgentActionGroupProperty {..}
    = AgentActionGroupProperty
        {description = Prelude.pure newValue, ..}
instance Property "FunctionSchema" AgentActionGroupProperty where
  type PropertyType "FunctionSchema" AgentActionGroupProperty = FunctionSchemaProperty
  set newValue AgentActionGroupProperty {..}
    = AgentActionGroupProperty
        {functionSchema = Prelude.pure newValue, ..}
instance Property "ParentActionGroupSignature" AgentActionGroupProperty where
  type PropertyType "ParentActionGroupSignature" AgentActionGroupProperty = Value Prelude.Text
  set newValue AgentActionGroupProperty {..}
    = AgentActionGroupProperty
        {parentActionGroupSignature = Prelude.pure newValue, ..}
instance Property "SkipResourceInUseCheckOnDelete" AgentActionGroupProperty where
  type PropertyType "SkipResourceInUseCheckOnDelete" AgentActionGroupProperty = Value Prelude.Bool
  set newValue AgentActionGroupProperty {..}
    = AgentActionGroupProperty
        {skipResourceInUseCheckOnDelete = Prelude.pure newValue, ..}