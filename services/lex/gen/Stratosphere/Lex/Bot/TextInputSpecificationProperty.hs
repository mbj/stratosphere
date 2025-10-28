module Stratosphere.Lex.Bot.TextInputSpecificationProperty (
        TextInputSpecificationProperty(..),
        mkTextInputSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TextInputSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-textinputspecification.html>
    TextInputSpecificationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-textinputspecification.html#cfn-lex-bot-textinputspecification-starttimeoutms>
                                    startTimeoutMs :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextInputSpecificationProperty ::
  Value Prelude.Integer -> TextInputSpecificationProperty
mkTextInputSpecificationProperty startTimeoutMs
  = TextInputSpecificationProperty
      {haddock_workaround_ = (), startTimeoutMs = startTimeoutMs}
instance ToResourceProperties TextInputSpecificationProperty where
  toResourceProperties TextInputSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.TextInputSpecification",
         supportsTags = Prelude.False,
         properties = ["StartTimeoutMs" JSON..= startTimeoutMs]}
instance JSON.ToJSON TextInputSpecificationProperty where
  toJSON TextInputSpecificationProperty {..}
    = JSON.object ["StartTimeoutMs" JSON..= startTimeoutMs]
instance Property "StartTimeoutMs" TextInputSpecificationProperty where
  type PropertyType "StartTimeoutMs" TextInputSpecificationProperty = Value Prelude.Integer
  set newValue TextInputSpecificationProperty {..}
    = TextInputSpecificationProperty {startTimeoutMs = newValue, ..}