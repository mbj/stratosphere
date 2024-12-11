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
  = AnswerRecommendationAIAgentConfigurationProperty {answerGenerationAIPromptId :: (Prelude.Maybe (Value Prelude.Text)),
                                                      associationConfigurations :: (Prelude.Maybe [AssociationConfigurationProperty]),
                                                      intentLabelingGenerationAIPromptId :: (Prelude.Maybe (Value Prelude.Text)),
                                                      queryReformulationAIPromptId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnswerRecommendationAIAgentConfigurationProperty ::
  AnswerRecommendationAIAgentConfigurationProperty
mkAnswerRecommendationAIAgentConfigurationProperty
  = AnswerRecommendationAIAgentConfigurationProperty
      {answerGenerationAIPromptId = Prelude.Nothing,
       associationConfigurations = Prelude.Nothing,
       intentLabelingGenerationAIPromptId = Prelude.Nothing,
       queryReformulationAIPromptId = Prelude.Nothing}
instance ToResourceProperties AnswerRecommendationAIAgentConfigurationProperty where
  toResourceProperties
    AnswerRecommendationAIAgentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgent.AnswerRecommendationAIAgentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnswerGenerationAIPromptId"
                              Prelude.<$> answerGenerationAIPromptId,
                            (JSON..=) "AssociationConfigurations"
                              Prelude.<$> associationConfigurations,
                            (JSON..=) "IntentLabelingGenerationAIPromptId"
                              Prelude.<$> intentLabelingGenerationAIPromptId,
                            (JSON..=) "QueryReformulationAIPromptId"
                              Prelude.<$> queryReformulationAIPromptId])}
instance JSON.ToJSON AnswerRecommendationAIAgentConfigurationProperty where
  toJSON AnswerRecommendationAIAgentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnswerGenerationAIPromptId"
                 Prelude.<$> answerGenerationAIPromptId,
               (JSON..=) "AssociationConfigurations"
                 Prelude.<$> associationConfigurations,
               (JSON..=) "IntentLabelingGenerationAIPromptId"
                 Prelude.<$> intentLabelingGenerationAIPromptId,
               (JSON..=) "QueryReformulationAIPromptId"
                 Prelude.<$> queryReformulationAIPromptId]))
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
instance Property "QueryReformulationAIPromptId" AnswerRecommendationAIAgentConfigurationProperty where
  type PropertyType "QueryReformulationAIPromptId" AnswerRecommendationAIAgentConfigurationProperty = Value Prelude.Text
  set newValue AnswerRecommendationAIAgentConfigurationProperty {..}
    = AnswerRecommendationAIAgentConfigurationProperty
        {queryReformulationAIPromptId = Prelude.pure newValue, ..}