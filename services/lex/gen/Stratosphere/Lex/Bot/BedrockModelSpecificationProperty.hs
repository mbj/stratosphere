module Stratosphere.Lex.Bot.BedrockModelSpecificationProperty (
        module Exports, BedrockModelSpecificationProperty(..),
        mkBedrockModelSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.BedrockGuardrailConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BedrockModelSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockmodelspecification.html>
    BedrockModelSpecificationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockmodelspecification.html#cfn-lex-bot-bedrockmodelspecification-bedrockguardrailconfiguration>
                                       bedrockGuardrailConfiguration :: (Prelude.Maybe BedrockGuardrailConfigurationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockmodelspecification.html#cfn-lex-bot-bedrockmodelspecification-bedrockmodelcustomprompt>
                                       bedrockModelCustomPrompt :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockmodelspecification.html#cfn-lex-bot-bedrockmodelspecification-bedrocktracestatus>
                                       bedrockTraceStatus :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockmodelspecification.html#cfn-lex-bot-bedrockmodelspecification-modelarn>
                                       modelArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBedrockModelSpecificationProperty ::
  Value Prelude.Text -> BedrockModelSpecificationProperty
mkBedrockModelSpecificationProperty modelArn
  = BedrockModelSpecificationProperty
      {haddock_workaround_ = (), modelArn = modelArn,
       bedrockGuardrailConfiguration = Prelude.Nothing,
       bedrockModelCustomPrompt = Prelude.Nothing,
       bedrockTraceStatus = Prelude.Nothing}
instance ToResourceProperties BedrockModelSpecificationProperty where
  toResourceProperties BedrockModelSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.BedrockModelSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ModelArn" JSON..= modelArn]
                           (Prelude.catMaybes
                              [(JSON..=) "BedrockGuardrailConfiguration"
                                 Prelude.<$> bedrockGuardrailConfiguration,
                               (JSON..=) "BedrockModelCustomPrompt"
                                 Prelude.<$> bedrockModelCustomPrompt,
                               (JSON..=) "BedrockTraceStatus" Prelude.<$> bedrockTraceStatus]))}
instance JSON.ToJSON BedrockModelSpecificationProperty where
  toJSON BedrockModelSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ModelArn" JSON..= modelArn]
              (Prelude.catMaybes
                 [(JSON..=) "BedrockGuardrailConfiguration"
                    Prelude.<$> bedrockGuardrailConfiguration,
                  (JSON..=) "BedrockModelCustomPrompt"
                    Prelude.<$> bedrockModelCustomPrompt,
                  (JSON..=) "BedrockTraceStatus" Prelude.<$> bedrockTraceStatus])))
instance Property "BedrockGuardrailConfiguration" BedrockModelSpecificationProperty where
  type PropertyType "BedrockGuardrailConfiguration" BedrockModelSpecificationProperty = BedrockGuardrailConfigurationProperty
  set newValue BedrockModelSpecificationProperty {..}
    = BedrockModelSpecificationProperty
        {bedrockGuardrailConfiguration = Prelude.pure newValue, ..}
instance Property "BedrockModelCustomPrompt" BedrockModelSpecificationProperty where
  type PropertyType "BedrockModelCustomPrompt" BedrockModelSpecificationProperty = Value Prelude.Text
  set newValue BedrockModelSpecificationProperty {..}
    = BedrockModelSpecificationProperty
        {bedrockModelCustomPrompt = Prelude.pure newValue, ..}
instance Property "BedrockTraceStatus" BedrockModelSpecificationProperty where
  type PropertyType "BedrockTraceStatus" BedrockModelSpecificationProperty = Value Prelude.Text
  set newValue BedrockModelSpecificationProperty {..}
    = BedrockModelSpecificationProperty
        {bedrockTraceStatus = Prelude.pure newValue, ..}
instance Property "ModelArn" BedrockModelSpecificationProperty where
  type PropertyType "ModelArn" BedrockModelSpecificationProperty = Value Prelude.Text
  set newValue BedrockModelSpecificationProperty {..}
    = BedrockModelSpecificationProperty {modelArn = newValue, ..}