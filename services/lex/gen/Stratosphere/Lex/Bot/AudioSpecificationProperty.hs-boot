module Stratosphere.Lex.Bot.AudioSpecificationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AudioSpecificationProperty :: Prelude.Type
instance ToResourceProperties AudioSpecificationProperty
instance JSON.ToJSON AudioSpecificationProperty