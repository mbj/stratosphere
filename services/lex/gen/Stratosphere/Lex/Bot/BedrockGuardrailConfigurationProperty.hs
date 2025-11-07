module Stratosphere.Lex.Bot.BedrockGuardrailConfigurationProperty (
        BedrockGuardrailConfigurationProperty(..),
        mkBedrockGuardrailConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BedrockGuardrailConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockguardrailconfiguration.html>
    BedrockGuardrailConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockguardrailconfiguration.html#cfn-lex-bot-bedrockguardrailconfiguration-bedrockguardrailidentifier>
                                           bedrockGuardrailIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockguardrailconfiguration.html#cfn-lex-bot-bedrockguardrailconfiguration-bedrockguardrailversion>
                                           bedrockGuardrailVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBedrockGuardrailConfigurationProperty ::
  BedrockGuardrailConfigurationProperty
mkBedrockGuardrailConfigurationProperty
  = BedrockGuardrailConfigurationProperty
      {haddock_workaround_ = (),
       bedrockGuardrailIdentifier = Prelude.Nothing,
       bedrockGuardrailVersion = Prelude.Nothing}
instance ToResourceProperties BedrockGuardrailConfigurationProperty where
  toResourceProperties BedrockGuardrailConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.BedrockGuardrailConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BedrockGuardrailIdentifier"
                              Prelude.<$> bedrockGuardrailIdentifier,
                            (JSON..=) "BedrockGuardrailVersion"
                              Prelude.<$> bedrockGuardrailVersion])}
instance JSON.ToJSON BedrockGuardrailConfigurationProperty where
  toJSON BedrockGuardrailConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BedrockGuardrailIdentifier"
                 Prelude.<$> bedrockGuardrailIdentifier,
               (JSON..=) "BedrockGuardrailVersion"
                 Prelude.<$> bedrockGuardrailVersion]))
instance Property "BedrockGuardrailIdentifier" BedrockGuardrailConfigurationProperty where
  type PropertyType "BedrockGuardrailIdentifier" BedrockGuardrailConfigurationProperty = Value Prelude.Text
  set newValue BedrockGuardrailConfigurationProperty {..}
    = BedrockGuardrailConfigurationProperty
        {bedrockGuardrailIdentifier = Prelude.pure newValue, ..}
instance Property "BedrockGuardrailVersion" BedrockGuardrailConfigurationProperty where
  type PropertyType "BedrockGuardrailVersion" BedrockGuardrailConfigurationProperty = Value Prelude.Text
  set newValue BedrockGuardrailConfigurationProperty {..}
    = BedrockGuardrailConfigurationProperty
        {bedrockGuardrailVersion = Prelude.pure newValue, ..}