module Stratosphere.Lex.Bot.DialogStateProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DialogStateProperty :: Prelude.Type
instance ToResourceProperties DialogStateProperty
instance JSON.ToJSON DialogStateProperty