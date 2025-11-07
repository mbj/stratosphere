module Stratosphere.Wisdom.AIAgent.SelfServiceAIAgentConfigurationProperty (
        module Exports, SelfServiceAIAgentConfigurationProperty(..),
        mkSelfServiceAIAgentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIAgent.AssociationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SelfServiceAIAgentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-selfserviceaiagentconfiguration.html>
    SelfServiceAIAgentConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-selfserviceaiagentconfiguration.html#cfn-wisdom-aiagent-selfserviceaiagentconfiguration-associationconfigurations>
                                             associationConfigurations :: (Prelude.Maybe [AssociationConfigurationProperty]),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-selfserviceaiagentconfiguration.html#cfn-wisdom-aiagent-selfserviceaiagentconfiguration-selfserviceaiguardrailid>
                                             selfServiceAIGuardrailId :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-selfserviceaiagentconfiguration.html#cfn-wisdom-aiagent-selfserviceaiagentconfiguration-selfserviceanswergenerationaipromptid>
                                             selfServiceAnswerGenerationAIPromptId :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-selfserviceaiagentconfiguration.html#cfn-wisdom-aiagent-selfserviceaiagentconfiguration-selfservicepreprocessingaipromptid>
                                             selfServicePreProcessingAIPromptId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSelfServiceAIAgentConfigurationProperty ::
  SelfServiceAIAgentConfigurationProperty
mkSelfServiceAIAgentConfigurationProperty
  = SelfServiceAIAgentConfigurationProperty
      {haddock_workaround_ = (),
       associationConfigurations = Prelude.Nothing,
       selfServiceAIGuardrailId = Prelude.Nothing,
       selfServiceAnswerGenerationAIPromptId = Prelude.Nothing,
       selfServicePreProcessingAIPromptId = Prelude.Nothing}
instance ToResourceProperties SelfServiceAIAgentConfigurationProperty where
  toResourceProperties SelfServiceAIAgentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgent.SelfServiceAIAgentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssociationConfigurations"
                              Prelude.<$> associationConfigurations,
                            (JSON..=) "SelfServiceAIGuardrailId"
                              Prelude.<$> selfServiceAIGuardrailId,
                            (JSON..=) "SelfServiceAnswerGenerationAIPromptId"
                              Prelude.<$> selfServiceAnswerGenerationAIPromptId,
                            (JSON..=) "SelfServicePreProcessingAIPromptId"
                              Prelude.<$> selfServicePreProcessingAIPromptId])}
instance JSON.ToJSON SelfServiceAIAgentConfigurationProperty where
  toJSON SelfServiceAIAgentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssociationConfigurations"
                 Prelude.<$> associationConfigurations,
               (JSON..=) "SelfServiceAIGuardrailId"
                 Prelude.<$> selfServiceAIGuardrailId,
               (JSON..=) "SelfServiceAnswerGenerationAIPromptId"
                 Prelude.<$> selfServiceAnswerGenerationAIPromptId,
               (JSON..=) "SelfServicePreProcessingAIPromptId"
                 Prelude.<$> selfServicePreProcessingAIPromptId]))
instance Property "AssociationConfigurations" SelfServiceAIAgentConfigurationProperty where
  type PropertyType "AssociationConfigurations" SelfServiceAIAgentConfigurationProperty = [AssociationConfigurationProperty]
  set newValue SelfServiceAIAgentConfigurationProperty {..}
    = SelfServiceAIAgentConfigurationProperty
        {associationConfigurations = Prelude.pure newValue, ..}
instance Property "SelfServiceAIGuardrailId" SelfServiceAIAgentConfigurationProperty where
  type PropertyType "SelfServiceAIGuardrailId" SelfServiceAIAgentConfigurationProperty = Value Prelude.Text
  set newValue SelfServiceAIAgentConfigurationProperty {..}
    = SelfServiceAIAgentConfigurationProperty
        {selfServiceAIGuardrailId = Prelude.pure newValue, ..}
instance Property "SelfServiceAnswerGenerationAIPromptId" SelfServiceAIAgentConfigurationProperty where
  type PropertyType "SelfServiceAnswerGenerationAIPromptId" SelfServiceAIAgentConfigurationProperty = Value Prelude.Text
  set newValue SelfServiceAIAgentConfigurationProperty {..}
    = SelfServiceAIAgentConfigurationProperty
        {selfServiceAnswerGenerationAIPromptId = Prelude.pure newValue, ..}
instance Property "SelfServicePreProcessingAIPromptId" SelfServiceAIAgentConfigurationProperty where
  type PropertyType "SelfServicePreProcessingAIPromptId" SelfServiceAIAgentConfigurationProperty = Value Prelude.Text
  set newValue SelfServiceAIAgentConfigurationProperty {..}
    = SelfServiceAIAgentConfigurationProperty
        {selfServicePreProcessingAIPromptId = Prelude.pure newValue, ..}