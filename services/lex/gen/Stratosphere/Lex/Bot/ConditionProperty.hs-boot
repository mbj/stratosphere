module Stratosphere.Lex.Bot.ConditionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConditionProperty :: Prelude.Type
instance ToResourceProperties ConditionProperty
instance JSON.ToJSON ConditionProperty