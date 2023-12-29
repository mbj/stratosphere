module Stratosphere.Lex.Bot.SampleValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SampleValueProperty :: Prelude.Type
instance ToResourceProperties SampleValueProperty
instance Prelude.Eq SampleValueProperty
instance Prelude.Show SampleValueProperty
instance JSON.ToJSON SampleValueProperty