module Stratosphere.Lex.Bot.SlotProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SlotProperty :: Prelude.Type
instance ToResourceProperties SlotProperty
instance JSON.ToJSON SlotProperty