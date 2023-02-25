module Stratosphere.Lex.Bot.SlotTypeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SlotTypeProperty :: Prelude.Type
instance ToResourceProperties SlotTypeProperty
instance JSON.ToJSON SlotTypeProperty