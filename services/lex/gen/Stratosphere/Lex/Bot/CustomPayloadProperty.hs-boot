module Stratosphere.Lex.Bot.CustomPayloadProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomPayloadProperty :: Prelude.Type
instance ToResourceProperties CustomPayloadProperty
instance Prelude.Eq CustomPayloadProperty
instance Prelude.Show CustomPayloadProperty
instance JSON.ToJSON CustomPayloadProperty