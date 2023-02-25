module Stratosphere.Lex.Bot.BotLocaleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BotLocaleProperty :: Prelude.Type
instance ToResourceProperties BotLocaleProperty
instance JSON.ToJSON BotLocaleProperty