module Stratosphere.Lex.Bot.SampleUtteranceProperty (
        SampleUtteranceProperty(..), mkSampleUtteranceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SampleUtteranceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-sampleutterance.html>
    SampleUtteranceProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-sampleutterance.html#cfn-lex-bot-sampleutterance-utterance>
                             utterance :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSampleUtteranceProperty ::
  Value Prelude.Text -> SampleUtteranceProperty
mkSampleUtteranceProperty utterance
  = SampleUtteranceProperty
      {haddock_workaround_ = (), utterance = utterance}
instance ToResourceProperties SampleUtteranceProperty where
  toResourceProperties SampleUtteranceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SampleUtterance",
         supportsTags = Prelude.False,
         properties = ["Utterance" JSON..= utterance]}
instance JSON.ToJSON SampleUtteranceProperty where
  toJSON SampleUtteranceProperty {..}
    = JSON.object ["Utterance" JSON..= utterance]
instance Property "Utterance" SampleUtteranceProperty where
  type PropertyType "Utterance" SampleUtteranceProperty = Value Prelude.Text
  set newValue SampleUtteranceProperty {..}
    = SampleUtteranceProperty {utterance = newValue, ..}