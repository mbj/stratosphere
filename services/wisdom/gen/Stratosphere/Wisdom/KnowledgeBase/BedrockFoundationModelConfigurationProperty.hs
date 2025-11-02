module Stratosphere.Wisdom.KnowledgeBase.BedrockFoundationModelConfigurationProperty (
        module Exports, BedrockFoundationModelConfigurationProperty(..),
        mkBedrockFoundationModelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.ParsingPromptProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BedrockFoundationModelConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-bedrockfoundationmodelconfiguration.html>
    BedrockFoundationModelConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-bedrockfoundationmodelconfiguration.html#cfn-wisdom-knowledgebase-bedrockfoundationmodelconfiguration-modelarn>
                                                 modelArn :: (Value Prelude.Text),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-bedrockfoundationmodelconfiguration.html#cfn-wisdom-knowledgebase-bedrockfoundationmodelconfiguration-parsingprompt>
                                                 parsingPrompt :: (Prelude.Maybe ParsingPromptProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBedrockFoundationModelConfigurationProperty ::
  Value Prelude.Text -> BedrockFoundationModelConfigurationProperty
mkBedrockFoundationModelConfigurationProperty modelArn
  = BedrockFoundationModelConfigurationProperty
      {haddock_workaround_ = (), modelArn = modelArn,
       parsingPrompt = Prelude.Nothing}
instance ToResourceProperties BedrockFoundationModelConfigurationProperty where
  toResourceProperties
    BedrockFoundationModelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.BedrockFoundationModelConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ModelArn" JSON..= modelArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ParsingPrompt" Prelude.<$> parsingPrompt]))}
instance JSON.ToJSON BedrockFoundationModelConfigurationProperty where
  toJSON BedrockFoundationModelConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ModelArn" JSON..= modelArn]
              (Prelude.catMaybes
                 [(JSON..=) "ParsingPrompt" Prelude.<$> parsingPrompt])))
instance Property "ModelArn" BedrockFoundationModelConfigurationProperty where
  type PropertyType "ModelArn" BedrockFoundationModelConfigurationProperty = Value Prelude.Text
  set newValue BedrockFoundationModelConfigurationProperty {..}
    = BedrockFoundationModelConfigurationProperty
        {modelArn = newValue, ..}
instance Property "ParsingPrompt" BedrockFoundationModelConfigurationProperty where
  type PropertyType "ParsingPrompt" BedrockFoundationModelConfigurationProperty = ParsingPromptProperty
  set newValue BedrockFoundationModelConfigurationProperty {..}
    = BedrockFoundationModelConfigurationProperty
        {parsingPrompt = Prelude.pure newValue, ..}