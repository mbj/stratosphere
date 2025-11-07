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
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-manualsearchaiagentconfiguration.html#cfn-wisdom-aiagent-manualsearchaiagentconfiguration-answergenerationaiguardrailid>
                                              answerGenerationAIGuardrailId :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-manualsearchaiagentconfiguration.html#cfn-wisdom-aiagent-manualsearchaiagentconfiguration-answergenerationaipromptid>
                                              answerGenerationAIPromptId :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-manualsearchaiagentconfiguration.html#cfn-wisdom-aiagent-manualsearchaiagentconfiguration-associationconfigurations>
                                              associationConfigurations :: (Prelude.Maybe [AssociationConfigurationProperty]),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-manualsearchaiagentconfiguration.html#cfn-wisdom-aiagent-manualsearchaiagentconfiguration-locale>
                                              locale :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManualSearchAIAgentConfigurationProperty ::
  ManualSearchAIAgentConfigurationProperty
mkManualSearchAIAgentConfigurationProperty
  = ManualSearchAIAgentConfigurationProperty
      {haddock_workaround_ = (),
       answerGenerationAIGuardrailId = Prelude.Nothing,
       answerGenerationAIPromptId = Prelude.Nothing,
       associationConfigurations = Prelude.Nothing,
       locale = Prelude.Nothing}
instance ToResourceProperties ManualSearchAIAgentConfigurationProperty where
  toResourceProperties ManualSearchAIAgentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgent.ManualSearchAIAgentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnswerGenerationAIGuardrailId"
                              Prelude.<$> answerGenerationAIGuardrailId,
                            (JSON..=) "AnswerGenerationAIPromptId"
                              Prelude.<$> answerGenerationAIPromptId,
                            (JSON..=) "AssociationConfigurations"
                              Prelude.<$> associationConfigurations,
                            (JSON..=) "Locale" Prelude.<$> locale])}
instance JSON.ToJSON ManualSearchAIAgentConfigurationProperty where
  toJSON ManualSearchAIAgentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnswerGenerationAIGuardrailId"
                 Prelude.<$> answerGenerationAIGuardrailId,
               (JSON..=) "AnswerGenerationAIPromptId"
                 Prelude.<$> answerGenerationAIPromptId,
               (JSON..=) "AssociationConfigurations"
                 Prelude.<$> associationConfigurations,
               (JSON..=) "Locale" Prelude.<$> locale]))
instance Property "AnswerGenerationAIGuardrailId" ManualSearchAIAgentConfigurationProperty where
  type PropertyType "AnswerGenerationAIGuardrailId" ManualSearchAIAgentConfigurationProperty = Value Prelude.Text
  set newValue ManualSearchAIAgentConfigurationProperty {..}
    = ManualSearchAIAgentConfigurationProperty
        {answerGenerationAIGuardrailId = Prelude.pure newValue, ..}
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
instance Property "Locale" ManualSearchAIAgentConfigurationProperty where
  type PropertyType "Locale" ManualSearchAIAgentConfigurationProperty = Value Prelude.Text
  set newValue ManualSearchAIAgentConfigurationProperty {..}
    = ManualSearchAIAgentConfigurationProperty
        {locale = Prelude.pure newValue, ..}