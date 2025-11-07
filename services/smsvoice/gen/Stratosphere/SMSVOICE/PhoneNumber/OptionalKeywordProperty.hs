module Stratosphere.SMSVOICE.PhoneNumber.OptionalKeywordProperty (
        OptionalKeywordProperty(..), mkOptionalKeywordProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OptionalKeywordProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-phonenumber-optionalkeyword.html>
    OptionalKeywordProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-phonenumber-optionalkeyword.html#cfn-smsvoice-phonenumber-optionalkeyword-action>
                             action :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-phonenumber-optionalkeyword.html#cfn-smsvoice-phonenumber-optionalkeyword-keyword>
                             keyword :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-phonenumber-optionalkeyword.html#cfn-smsvoice-phonenumber-optionalkeyword-message>
                             message :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOptionalKeywordProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> OptionalKeywordProperty
mkOptionalKeywordProperty action keyword message
  = OptionalKeywordProperty
      {haddock_workaround_ = (), action = action, keyword = keyword,
       message = message}
instance ToResourceProperties OptionalKeywordProperty where
  toResourceProperties OptionalKeywordProperty {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::PhoneNumber.OptionalKeyword",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action, "Keyword" JSON..= keyword,
                       "Message" JSON..= message]}
instance JSON.ToJSON OptionalKeywordProperty where
  toJSON OptionalKeywordProperty {..}
    = JSON.object
        ["Action" JSON..= action, "Keyword" JSON..= keyword,
         "Message" JSON..= message]
instance Property "Action" OptionalKeywordProperty where
  type PropertyType "Action" OptionalKeywordProperty = Value Prelude.Text
  set newValue OptionalKeywordProperty {..}
    = OptionalKeywordProperty {action = newValue, ..}
instance Property "Keyword" OptionalKeywordProperty where
  type PropertyType "Keyword" OptionalKeywordProperty = Value Prelude.Text
  set newValue OptionalKeywordProperty {..}
    = OptionalKeywordProperty {keyword = newValue, ..}
instance Property "Message" OptionalKeywordProperty where
  type PropertyType "Message" OptionalKeywordProperty = Value Prelude.Text
  set newValue OptionalKeywordProperty {..}
    = OptionalKeywordProperty {message = newValue, ..}