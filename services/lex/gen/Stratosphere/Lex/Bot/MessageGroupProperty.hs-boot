module Stratosphere.Lex.Bot.MessageGroupProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MessageGroupProperty :: Prelude.Type
instance ToResourceProperties MessageGroupProperty
instance JSON.ToJSON MessageGroupProperty