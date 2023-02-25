module Stratosphere.Lex.Bot.IntentOverrideProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IntentOverrideProperty :: Prelude.Type
instance ToResourceProperties IntentOverrideProperty
instance JSON.ToJSON IntentOverrideProperty