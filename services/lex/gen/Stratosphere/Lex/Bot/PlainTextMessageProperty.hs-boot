module Stratosphere.Lex.Bot.PlainTextMessageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PlainTextMessageProperty :: Prelude.Type
instance ToResourceProperties PlainTextMessageProperty
instance JSON.ToJSON PlainTextMessageProperty