module Stratosphere.Lex.Bot.CustomVocabularyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomVocabularyProperty :: Prelude.Type
instance ToResourceProperties CustomVocabularyProperty
instance JSON.ToJSON CustomVocabularyProperty