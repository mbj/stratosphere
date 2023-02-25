module Stratosphere.Lex.Bot.CustomPayloadProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomPayloadProperty :: Prelude.Type
instance ToResourceProperties CustomPayloadProperty
instance JSON.ToJSON CustomPayloadProperty