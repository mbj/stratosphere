module Stratosphere.Lex.Bot.SlotValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SlotValueProperty :: Prelude.Type
instance ToResourceProperties SlotValueProperty
instance JSON.ToJSON SlotValueProperty