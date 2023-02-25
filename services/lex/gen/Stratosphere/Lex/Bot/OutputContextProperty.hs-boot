module Stratosphere.Lex.Bot.OutputContextProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OutputContextProperty :: Prelude.Type
instance ToResourceProperties OutputContextProperty
instance JSON.ToJSON OutputContextProperty