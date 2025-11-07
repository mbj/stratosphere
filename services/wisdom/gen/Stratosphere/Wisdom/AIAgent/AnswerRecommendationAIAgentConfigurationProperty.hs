module Stratosphere.Wisdom.AIAgent.AnswerRecommendationAIAgentConfigurationProperty (
        module Exports,
        AnswerRecommendationAIAgentConfigurationProperty(..),
        mkAnswerRecommendationAIAgentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIAgent.AssociationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnswerRecommendationAIAgentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-answerrecommendationaiagentconfiguration.html>
    AnswerRecommendationAIAgentConfigurationProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-answerrecommendationaiagentconfiguration.html#cfn-wisdom-aiagent-answerrecommendationaiagentconfiguration-answergenerationaiguardrailid>
                                                      answerGenerationAIGuardrailId :: (Prelude.Maybe (Value Prelude.Text)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-answerrecommendationaiagentconfiguration.html#cfn-wisdom-aiagent-answerrecommendationaiagentconfiguration-answergenerationaipromptid>
                                                      answerGenerationAIPromptId :: (Prelude.Maybe (Value Prelude.Text)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-answerrecommendationaiagentconfiguration.html#cfn-wisdom-aiagent-answerrecommendationaiagentconfiguration-associationconfigurations>
                                                      associationConfigurations :: (Prelude.Maybe [AssociationConfigurationProperty]),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-answerrecommendationaiagentconfiguration.html#cfn-wisdom-aiagent-answerrecommendationaiagentconfiguration-intentlabelinggenerationaipromptid>
                                                      intentLabelingGenerationAIPromptId :: (Prelude.Maybe (Value Prelude.Text)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-answerrecommendationaiagentconfiguration.html#cfn-wisdom-aiagent-answerrecommendationaiagentconfiguration-locale>
                                                      locale :: (Prelude.Maybe (Value Prelude.Text)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-answerrecommendationaiagentconfiguration.html#cfn-wisdom-aiagent-answerrecommendationaiagentconfiguration-queryreformulationaipromptid>
                                                      queryReformulationAIPromptId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnswerRecommendationAIAgentConfigurationProperty ::
  AnswerRecommendationAIAgentConfigurationProperty
mkAnswerRecommendationAIAgentConfigurationProperty
  = AnswerRecommendationAIAgentConfigurationProperty
      {haddock_workaround_ = (),
       answerGenerationAIGuardrailId = Prelude.Nothing,
       answerGenerationAIPromptId = Prelude.Nothing,
       associationConfigurations = Prelude.Nothing,
       intentLabelingGenerationAIPromptId = Prelude.Nothing,
       locale = Prelude.Nothing,
       queryReformulationAIPromptId = Prelude.Nothing}
instance ToResourceProperties AnswerRecommendationAIAgentConfigurationProperty where
  toResourceProperties
    AnswerRecommendationAIAgentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgent.AnswerRecommendationAIAgentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnswerGenerationAIGuardrailId"
                              Prelude.<$> answerGenerationAIGuardrailId,
                            (JSON..=) "AnswerGenerationAIPromptId"
                              Prelude.<$> answerGenerationAIPromptId,
                            (JSON..=) "AssociationConfigurations"
                              Prelude.<$> associationConfigurations,
                            (JSON..=) "IntentLabelingGenerationAIPromptId"
                              Prelude.<$> intentLabelingGenerationAIPromptId,
                            (JSON..=) "Locale" Prelude.<$> locale,
                            (JSON..=) "QueryReformulationAIPromptId"
                              Prelude.<$> queryReformulationAIPromptId])}
instance JSON.ToJSON AnswerRecommendationAIAgentConfigurationProperty where
  toJSON AnswerRecommendationAIAgentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnswerGenerationAIGuardrailId"
                 Prelude.<$> answerGenerationAIGuardrailId,
               (JSON..=) "AnswerGenerationAIPromptId"
                 Prelude.<$> answerGenerationAIPromptId,
               (JSON..=) "AssociationConfigurations"
                 Prelude.<$> associationConfigurations,
               (JSON..=) "IntentLabelingGenerationAIPromptId"
                 Prelude.<$> intentLabelingGenerationAIPromptId,
               (JSON..=) "Locale" Prelude.<$> locale,
               (JSON..=) "QueryReformulationAIPromptId"
                 Prelude.<$> queryReformulationAIPromptId]))
instance Property "AnswerGenerationAIGuardrailId" AnswerRecommendationAIAgentConfigurationProperty where
  type PropertyType "AnswerGenerationAIGuardrailId" AnswerRecommendationAIAgentConfigurationProperty = Value Prelude.Text
  set newValue AnswerRecommendationAIAgentConfigurationProperty {..}
    = AnswerRecommendationAIAgentConfigurationProperty
        {answerGenerationAIGuardrailId = Prelude.pure newValue, ..}
instance Property "AnswerGenerationAIPromptId" AnswerRecommendationAIAgentConfigurationProperty where
  type PropertyType "AnswerGenerationAIPromptId" AnswerRecommendationAIAgentConfigurationProperty = Value Prelude.Text
  set newValue AnswerRecommendationAIAgentConfigurationProperty {..}
    = AnswerRecommendationAIAgentConfigurationProperty
        {answerGenerationAIPromptId = Prelude.pure newValue, ..}
instance Property "AssociationConfigurations" AnswerRecommendationAIAgentConfigurationProperty where
  type PropertyType "AssociationConfigurations" AnswerRecommendationAIAgentConfigurationProperty = [AssociationConfigurationProperty]
  set newValue AnswerRecommendationAIAgentConfigurationProperty {..}
    = AnswerRecommendationAIAgentConfigurationProperty
        {associationConfigurations = Prelude.pure newValue, ..}
instance Property "IntentLabelingGenerationAIPromptId" AnswerRecommendationAIAgentConfigurationProperty where
  type PropertyType "IntentLabelingGenerationAIPromptId" AnswerRecommendationAIAgentConfigurationProperty = Value Prelude.Text
  set newValue AnswerRecommendationAIAgentConfigurationProperty {..}
    = AnswerRecommendationAIAgentConfigurationProperty
        {intentLabelingGenerationAIPromptId = Prelude.pure newValue, ..}
instance Property "Locale" AnswerRecommendationAIAgentConfigurationProperty where
  type PropertyType "Locale" AnswerRecommendationAIAgentConfigurationProperty = Value Prelude.Text
  set newValue AnswerRecommendationAIAgentConfigurationProperty {..}
    = AnswerRecommendationAIAgentConfigurationProperty
        {locale = Prelude.pure newValue, ..}
instance Property "QueryReformulationAIPromptId" AnswerRecommendationAIAgentConfigurationProperty where
  type PropertyType "QueryReformulationAIPromptId" AnswerRecommendationAIAgentConfigurationProperty = Value Prelude.Text
  set newValue AnswerRecommendationAIAgentConfigurationProperty {..}
    = AnswerRecommendationAIAgentConfigurationProperty
        {queryReformulationAIPromptId = Prelude.pure newValue, ..}