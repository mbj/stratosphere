module Stratosphere.Lex.Bot.SampleValueProperty (
        SampleValueProperty(..), mkSampleValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SampleValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-samplevalue.html>
    SampleValueProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-samplevalue.html#cfn-lex-bot-samplevalue-value>
                         value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSampleValueProperty :: Value Prelude.Text -> SampleValueProperty
mkSampleValueProperty value
  = SampleValueProperty {haddock_workaround_ = (), value = value}
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
  set newValue SampleValueProperty {..}
    = SampleValueProperty {value = newValue, ..}