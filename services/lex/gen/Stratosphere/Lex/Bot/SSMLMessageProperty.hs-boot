module Stratosphere.Lex.Bot.SSMLMessageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SSMLMessageProperty :: Prelude.Type
instance ToResourceProperties SSMLMessageProperty
instance JSON.ToJSON SSMLMessageProperty