module Stratosphere.Lex.Bot.BedrockKnowledgeStoreConfigurationProperty (
        module Exports, BedrockKnowledgeStoreConfigurationProperty(..),
        mkBedrockKnowledgeStoreConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.BKBExactResponseFieldsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BedrockKnowledgeStoreConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockknowledgestoreconfiguration.html>
    BedrockKnowledgeStoreConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockknowledgestoreconfiguration.html#cfn-lex-bot-bedrockknowledgestoreconfiguration-bkbexactresponsefields>
                                                bKBExactResponseFields :: (Prelude.Maybe BKBExactResponseFieldsProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockknowledgestoreconfiguration.html#cfn-lex-bot-bedrockknowledgestoreconfiguration-bedrockknowledgebasearn>
                                                bedrockKnowledgeBaseArn :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bedrockknowledgestoreconfiguration.html#cfn-lex-bot-bedrockknowledgestoreconfiguration-exactresponse>
                                                exactResponse :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBedrockKnowledgeStoreConfigurationProperty ::
  BedrockKnowledgeStoreConfigurationProperty
mkBedrockKnowledgeStoreConfigurationProperty
  = BedrockKnowledgeStoreConfigurationProperty
      {haddock_workaround_ = (),
       bKBExactResponseFields = Prelude.Nothing,
       bedrockKnowledgeBaseArn = Prelude.Nothing,
       exactResponse = Prelude.Nothing}
instance ToResourceProperties BedrockKnowledgeStoreConfigurationProperty where
  toResourceProperties
    BedrockKnowledgeStoreConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.BedrockKnowledgeStoreConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BKBExactResponseFields"
                              Prelude.<$> bKBExactResponseFields,
                            (JSON..=) "BedrockKnowledgeBaseArn"
                              Prelude.<$> bedrockKnowledgeBaseArn,
                            (JSON..=) "ExactResponse" Prelude.<$> exactResponse])}
instance JSON.ToJSON BedrockKnowledgeStoreConfigurationProperty where
  toJSON BedrockKnowledgeStoreConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BKBExactResponseFields"
                 Prelude.<$> bKBExactResponseFields,
               (JSON..=) "BedrockKnowledgeBaseArn"
                 Prelude.<$> bedrockKnowledgeBaseArn,
               (JSON..=) "ExactResponse" Prelude.<$> exactResponse]))
instance Property "BKBExactResponseFields" BedrockKnowledgeStoreConfigurationProperty where
  type PropertyType "BKBExactResponseFields" BedrockKnowledgeStoreConfigurationProperty = BKBExactResponseFieldsProperty
  set newValue BedrockKnowledgeStoreConfigurationProperty {..}
    = BedrockKnowledgeStoreConfigurationProperty
        {bKBExactResponseFields = Prelude.pure newValue, ..}
instance Property "BedrockKnowledgeBaseArn" BedrockKnowledgeStoreConfigurationProperty where
  type PropertyType "BedrockKnowledgeBaseArn" BedrockKnowledgeStoreConfigurationProperty = Value Prelude.Text
  set newValue BedrockKnowledgeStoreConfigurationProperty {..}
    = BedrockKnowledgeStoreConfigurationProperty
        {bedrockKnowledgeBaseArn = Prelude.pure newValue, ..}
instance Property "ExactResponse" BedrockKnowledgeStoreConfigurationProperty where
  type PropertyType "ExactResponse" BedrockKnowledgeStoreConfigurationProperty = Value Prelude.Bool
  set newValue BedrockKnowledgeStoreConfigurationProperty {..}
    = BedrockKnowledgeStoreConfigurationProperty
        {exactResponse = Prelude.pure newValue, ..}