module Stratosphere.Lex.Bot.MessageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MessageProperty :: Prelude.Type
instance ToResourceProperties MessageProperty
instance JSON.ToJSON MessageProperty