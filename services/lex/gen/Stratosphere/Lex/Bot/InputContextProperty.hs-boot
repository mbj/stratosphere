module Stratosphere.Lex.Bot.InputContextProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputContextProperty :: Prelude.Type
instance ToResourceProperties InputContextProperty
instance JSON.ToJSON InputContextProperty