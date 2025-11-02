module Stratosphere.Lex.Bot.CustomVocabularyItemProperty (
        CustomVocabularyItemProperty(..), mkCustomVocabularyItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomVocabularyItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-customvocabularyitem.html>
    CustomVocabularyItemProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-customvocabularyitem.html#cfn-lex-bot-customvocabularyitem-displayas>
                                  displayAs :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-customvocabularyitem.html#cfn-lex-bot-customvocabularyitem-phrase>
                                  phrase :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-customvocabularyitem.html#cfn-lex-bot-customvocabularyitem-weight>
                                  weight :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomVocabularyItemProperty ::
  Value Prelude.Text -> CustomVocabularyItemProperty
mkCustomVocabularyItemProperty phrase
  = CustomVocabularyItemProperty
      {haddock_workaround_ = (), phrase = phrase,
       displayAs = Prelude.Nothing, weight = Prelude.Nothing}
instance ToResourceProperties CustomVocabularyItemProperty where
  toResourceProperties CustomVocabularyItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.CustomVocabularyItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Phrase" JSON..= phrase]
                           (Prelude.catMaybes
                              [(JSON..=) "DisplayAs" Prelude.<$> displayAs,
                               (JSON..=) "Weight" Prelude.<$> weight]))}
instance JSON.ToJSON CustomVocabularyItemProperty where
  toJSON CustomVocabularyItemProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Phrase" JSON..= phrase]
              (Prelude.catMaybes
                 [(JSON..=) "DisplayAs" Prelude.<$> displayAs,
                  (JSON..=) "Weight" Prelude.<$> weight])))
instance Property "DisplayAs" CustomVocabularyItemProperty where
  type PropertyType "DisplayAs" CustomVocabularyItemProperty = Value Prelude.Text
  set newValue CustomVocabularyItemProperty {..}
    = CustomVocabularyItemProperty
        {displayAs = Prelude.pure newValue, ..}
instance Property "Phrase" CustomVocabularyItemProperty where
  type PropertyType "Phrase" CustomVocabularyItemProperty = Value Prelude.Text
  set newValue CustomVocabularyItemProperty {..}
    = CustomVocabularyItemProperty {phrase = newValue, ..}
instance Property "Weight" CustomVocabularyItemProperty where
  type PropertyType "Weight" CustomVocabularyItemProperty = Value Prelude.Integer
  set newValue CustomVocabularyItemProperty {..}
    = CustomVocabularyItemProperty {weight = Prelude.pure newValue, ..}