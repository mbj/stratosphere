module Stratosphere.Lex.Bot.SessionAttributeProperty (
        SessionAttributeProperty(..), mkSessionAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SessionAttributeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-sessionattribute.html>
    SessionAttributeProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-sessionattribute.html#cfn-lex-bot-sessionattribute-key>
                              key :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-sessionattribute.html#cfn-lex-bot-sessionattribute-value>
                              value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSessionAttributeProperty ::
  Value Prelude.Text -> SessionAttributeProperty
mkSessionAttributeProperty key
  = SessionAttributeProperty
      {haddock_workaround_ = (), key = key, value = Prelude.Nothing}
instance ToResourceProperties SessionAttributeProperty where
  toResourceProperties SessionAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SessionAttribute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON SessionAttributeProperty where
  toJSON SessionAttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Key" SessionAttributeProperty where
  type PropertyType "Key" SessionAttributeProperty = Value Prelude.Text
  set newValue SessionAttributeProperty {..}
    = SessionAttributeProperty {key = newValue, ..}
instance Property "Value" SessionAttributeProperty where
  type PropertyType "Value" SessionAttributeProperty = Value Prelude.Text
  set newValue SessionAttributeProperty {..}
    = SessionAttributeProperty {value = Prelude.pure newValue, ..}