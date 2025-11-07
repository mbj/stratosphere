module Stratosphere.Wisdom.AIAgent.AIAgentConfigurationProperty (
        module Exports, AIAgentConfigurationProperty(..),
        mkAIAgentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIAgent.AnswerRecommendationAIAgentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.AIAgent.ManualSearchAIAgentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.AIAgent.SelfServiceAIAgentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AIAgentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-aiagentconfiguration.html>
    AIAgentConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-aiagentconfiguration.html#cfn-wisdom-aiagent-aiagentconfiguration-answerrecommendationaiagentconfiguration>
                                  answerRecommendationAIAgentConfiguration :: (Prelude.Maybe AnswerRecommendationAIAgentConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-aiagentconfiguration.html#cfn-wisdom-aiagent-aiagentconfiguration-manualsearchaiagentconfiguration>
                                  manualSearchAIAgentConfiguration :: (Prelude.Maybe ManualSearchAIAgentConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-aiagentconfiguration.html#cfn-wisdom-aiagent-aiagentconfiguration-selfserviceaiagentconfiguration>
                                  selfServiceAIAgentConfiguration :: (Prelude.Maybe SelfServiceAIAgentConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAIAgentConfigurationProperty :: AIAgentConfigurationProperty
mkAIAgentConfigurationProperty
  = AIAgentConfigurationProperty
      {haddock_workaround_ = (),
       answerRecommendationAIAgentConfiguration = Prelude.Nothing,
       manualSearchAIAgentConfiguration = Prelude.Nothing,
       selfServiceAIAgentConfiguration = Prelude.Nothing}
instance ToResourceProperties AIAgentConfigurationProperty where
  toResourceProperties AIAgentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgent.AIAgentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnswerRecommendationAIAgentConfiguration"
                              Prelude.<$> answerRecommendationAIAgentConfiguration,
                            (JSON..=) "ManualSearchAIAgentConfiguration"
                              Prelude.<$> manualSearchAIAgentConfiguration,
                            (JSON..=) "SelfServiceAIAgentConfiguration"
                              Prelude.<$> selfServiceAIAgentConfiguration])}
instance JSON.ToJSON AIAgentConfigurationProperty where
  toJSON AIAgentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnswerRecommendationAIAgentConfiguration"
                 Prelude.<$> answerRecommendationAIAgentConfiguration,
               (JSON..=) "ManualSearchAIAgentConfiguration"
                 Prelude.<$> manualSearchAIAgentConfiguration,
               (JSON..=) "SelfServiceAIAgentConfiguration"
                 Prelude.<$> selfServiceAIAgentConfiguration]))
instance Property "AnswerRecommendationAIAgentConfiguration" AIAgentConfigurationProperty where
  type PropertyType "AnswerRecommendationAIAgentConfiguration" AIAgentConfigurationProperty = AnswerRecommendationAIAgentConfigurationProperty
  set newValue AIAgentConfigurationProperty {..}
    = AIAgentConfigurationProperty
        {answerRecommendationAIAgentConfiguration = Prelude.pure newValue,
         ..}
instance Property "ManualSearchAIAgentConfiguration" AIAgentConfigurationProperty where
  type PropertyType "ManualSearchAIAgentConfiguration" AIAgentConfigurationProperty = ManualSearchAIAgentConfigurationProperty
  set newValue AIAgentConfigurationProperty {..}
    = AIAgentConfigurationProperty
        {manualSearchAIAgentConfiguration = Prelude.pure newValue, ..}
instance Property "SelfServiceAIAgentConfiguration" AIAgentConfigurationProperty where
  type PropertyType "SelfServiceAIAgentConfiguration" AIAgentConfigurationProperty = SelfServiceAIAgentConfigurationProperty
  set newValue AIAgentConfigurationProperty {..}
    = AIAgentConfigurationProperty
        {selfServiceAIAgentConfiguration = Prelude.pure newValue, ..}