module Stratosphere.Lex.Bot.AudioSpecificationProperty (
        AudioSpecificationProperty(..), mkAudioSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-audiospecification.html>
    AudioSpecificationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-audiospecification.html#cfn-lex-bot-audiospecification-endtimeoutms>
                                endTimeoutMs :: (Value Prelude.Integer),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-audiospecification.html#cfn-lex-bot-audiospecification-maxlengthms>
                                maxLengthMs :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioSpecificationProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> AudioSpecificationProperty
mkAudioSpecificationProperty endTimeoutMs maxLengthMs
  = AudioSpecificationProperty
      {haddock_workaround_ = (), endTimeoutMs = endTimeoutMs,
       maxLengthMs = maxLengthMs}
instance ToResourceProperties AudioSpecificationProperty where
  toResourceProperties AudioSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.AudioSpecification",
         supportsTags = Prelude.False,
         properties = ["EndTimeoutMs" JSON..= endTimeoutMs,
                       "MaxLengthMs" JSON..= maxLengthMs]}
instance JSON.ToJSON AudioSpecificationProperty where
  toJSON AudioSpecificationProperty {..}
    = JSON.object
        ["EndTimeoutMs" JSON..= endTimeoutMs,
         "MaxLengthMs" JSON..= maxLengthMs]
instance Property "EndTimeoutMs" AudioSpecificationProperty where
  type PropertyType "EndTimeoutMs" AudioSpecificationProperty = Value Prelude.Integer
  set newValue AudioSpecificationProperty {..}
    = AudioSpecificationProperty {endTimeoutMs = newValue, ..}
instance Property "MaxLengthMs" AudioSpecificationProperty where
  type PropertyType "MaxLengthMs" AudioSpecificationProperty = Value Prelude.Integer
  set newValue AudioSpecificationProperty {..}
    = AudioSpecificationProperty {maxLengthMs = newValue, ..}