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
  = ManualSearchAIAgentConfigurationProperty {answerGenerationAIPromptId :: (Prelude.Maybe (Value Prelude.Text)),
                                              associationConfigurations :: (Prelude.Maybe [AssociationConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManualSearchAIAgentConfigurationProperty ::
  ManualSearchAIAgentConfigurationProperty
mkManualSearchAIAgentConfigurationProperty
  = ManualSearchAIAgentConfigurationProperty
      {answerGenerationAIPromptId = Prelude.Nothing,
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