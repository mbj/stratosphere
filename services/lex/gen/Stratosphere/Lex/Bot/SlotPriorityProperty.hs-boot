module Stratosphere.Lex.Bot.SlotPriorityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SlotPriorityProperty :: Prelude.Type
instance ToResourceProperties SlotPriorityProperty
instance JSON.ToJSON SlotPriorityProperty