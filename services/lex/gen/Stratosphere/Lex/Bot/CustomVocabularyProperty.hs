module Stratosphere.Lex.Bot.CustomVocabularyProperty (
        module Exports, CustomVocabularyProperty(..),
        mkCustomVocabularyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.CustomVocabularyItemProperty as Exports
import Stratosphere.ResourceProperties
data CustomVocabularyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-customvocabulary.html>
    CustomVocabularyProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-customvocabulary.html#cfn-lex-bot-customvocabulary-customvocabularyitems>
                              customVocabularyItems :: [CustomVocabularyItemProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomVocabularyProperty ::
  [CustomVocabularyItemProperty] -> CustomVocabularyProperty
mkCustomVocabularyProperty customVocabularyItems
  = CustomVocabularyProperty
      {haddock_workaround_ = (),
       customVocabularyItems = customVocabularyItems}
instance ToResourceProperties CustomVocabularyProperty where
  toResourceProperties CustomVocabularyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.CustomVocabulary",
         supportsTags = Prelude.False,
         properties = ["CustomVocabularyItems"
                         JSON..= customVocabularyItems]}
instance JSON.ToJSON CustomVocabularyProperty where
  toJSON CustomVocabularyProperty {..}
    = JSON.object
        ["CustomVocabularyItems" JSON..= customVocabularyItems]
instance Property "CustomVocabularyItems" CustomVocabularyProperty where
  type PropertyType "CustomVocabularyItems" CustomVocabularyProperty = [CustomVocabularyItemProperty]
  set newValue CustomVocabularyProperty {..}
    = CustomVocabularyProperty {customVocabularyItems = newValue, ..}