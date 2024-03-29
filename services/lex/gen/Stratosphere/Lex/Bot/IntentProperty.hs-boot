module Stratosphere.Lex.Bot.IntentProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IntentProperty :: Prelude.Type
instance ToResourceProperties IntentProperty
instance Prelude.Eq IntentProperty
instance Prelude.Show IntentProperty
instance JSON.ToJSON IntentProperty