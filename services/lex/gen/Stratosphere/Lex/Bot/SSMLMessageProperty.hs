module Stratosphere.Lex.Bot.SSMLMessageProperty (
        SSMLMessageProperty(..), mkSSMLMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SSMLMessageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-ssmlmessage.html>
    SSMLMessageProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-ssmlmessage.html#cfn-lex-bot-ssmlmessage-value>
                         value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSSMLMessageProperty :: Value Prelude.Text -> SSMLMessageProperty
mkSSMLMessageProperty value
  = SSMLMessageProperty {haddock_workaround_ = (), value = value}
instance ToResourceProperties SSMLMessageProperty where
  toResourceProperties SSMLMessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SSMLMessage",
         supportsTags = Prelude.False, properties = ["Value" JSON..= value]}
instance JSON.ToJSON SSMLMessageProperty where
  toJSON SSMLMessageProperty {..}
    = JSON.object ["Value" JSON..= value]
instance Property "Value" SSMLMessageProperty where
  type PropertyType "Value" SSMLMessageProperty = Value Prelude.Text
  set newValue SSMLMessageProperty {..}
    = SSMLMessageProperty {value = newValue, ..}