module Stratosphere.Lex.Bot.SampleValueProperty (
        SampleValueProperty(..), mkSampleValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SampleValueProperty
  = SampleValueProperty {value :: (Value Prelude.Text)}
mkSampleValueProperty :: Value Prelude.Text -> SampleValueProperty
mkSampleValueProperty value = SampleValueProperty {value = value}
instance ToResourceProperties SampleValueProperty where
  toResourceProperties SampleValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SampleValue",
         supportsTags = Prelude.False, properties = ["Value" JSON..= value]}
instance JSON.ToJSON SampleValueProperty where
  toJSON SampleValueProperty {..}
    = JSON.object ["Value" JSON..= value]
instance Property "Value" SampleValueProperty where
  type PropertyType "Value" SampleValueProperty = Value Prelude.Text
  set newValue SampleValueProperty {}
    = SampleValueProperty {value = newValue, ..}