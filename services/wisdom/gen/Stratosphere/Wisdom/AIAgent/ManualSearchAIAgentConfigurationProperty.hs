module Stratosphere.Wisdom.AIAgent.ManualSearchAIAgentConfigurationProperty (
        module Exports, ManualSearchAIAgentConfigurationProperty(..),
        mkManualSearchAIAgentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIAgent.AssociationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManualSearchAIAgentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-manualsearchaiagentconfiguration.html>
    ManualSearchAIAgentConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-manualsearchaiagentconfiguration.html#cfn-wisdom-aiagent-manualsearchaiagentconfiguration-answergenerationaipromptid>
                                              answerGenerationAIPromptId :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-manualsearchaiagentconfiguration.html#cfn-wisdom-aiagent-manualsearchaiagentconfiguration-associationconfigurations>
                                              associationConfigurations :: (Prelude.Maybe [AssociationConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManualSearchAIAgentConfigurationProperty ::
  ManualSearchAIAgentConfigurationProperty
mkManualSearchAIAgentConfigurationProperty
  = ManualSearchAIAgentConfigurationProperty
      {haddock_workaround_ = (),
       answerGenerationAIPromptId = Prelude.Nothing,
       associationConfigurations = Prelude.Nothing}
instance ToResourceProperties ManualSearchAIAgentConfigurationProperty where
  toResourceProperties ManualSearchAIAgentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgent.ManualSearchAIAgentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnswerGenerationAIPromptId"
                              Prelude.<$> answerGenerationAIPromptId,
                            (JSON..=) "AssociationConfigurations"
                              Prelude.<$> associationConfigurations])}
instance JSON.ToJSON ManualSearchAIAgentConfigurationProperty where
  toJSON ManualSearchAIAgentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnswerGenerationAIPromptId"
                 Prelude.<$> answerGenerationAIPromptId,
               (JSON..=) "AssociationConfigurations"
                 Prelude.<$> associationConfigurations]))
instance Property "AnswerGenerationAIPromptId" ManualSearchAIAgentConfigurationProperty where
  type PropertyType "AnswerGenerationAIPromptId" ManualSearchAIAgentConfigurationProperty = Value Prelude.Text
  set newValue ManualSearchAIAgentConfigurationProperty {..}
    = ManualSearchAIAgentConfigurationProperty
        {answerGenerationAIPromptId = Prelude.pure newValue, ..}
instance Property "AssociationConfigurations" ManualSearchAIAgentConfigurationProperty where
  type PropertyType "AssociationConfigurations" ManualSearchAIAgentConfigurationProperty = [AssociationConfigurationProperty]
  set newValue ManualSearchAIAgentConfigurationProperty {..}
    = ManualSearchAIAgentConfigurationProperty
        {associationConfigurations = Prelude.pure newValue, ..}