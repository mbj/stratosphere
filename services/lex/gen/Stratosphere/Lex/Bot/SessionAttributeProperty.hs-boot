module Stratosphere.Lex.Bot.SessionAttributeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SessionAttributeProperty :: Prelude.Type
instance ToResourceProperties SessionAttributeProperty
instance JSON.ToJSON SessionAttributeProperty