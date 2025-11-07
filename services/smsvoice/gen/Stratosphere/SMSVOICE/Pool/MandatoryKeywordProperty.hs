module Stratosphere.SMSVOICE.Pool.MandatoryKeywordProperty (
        MandatoryKeywordProperty(..), mkMandatoryKeywordProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MandatoryKeywordProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-pool-mandatorykeyword.html>
    MandatoryKeywordProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-pool-mandatorykeyword.html#cfn-smsvoice-pool-mandatorykeyword-message>
                              message :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMandatoryKeywordProperty ::
  Value Prelude.Text -> MandatoryKeywordProperty
mkMandatoryKeywordProperty message
  = MandatoryKeywordProperty
      {haddock_workaround_ = (), message = message}
instance ToResourceProperties MandatoryKeywordProperty where
  toResourceProperties MandatoryKeywordProperty {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::Pool.MandatoryKeyword",
         supportsTags = Prelude.False,
         properties = ["Message" JSON..= message]}
instance JSON.ToJSON MandatoryKeywordProperty where
  toJSON MandatoryKeywordProperty {..}
    = JSON.object ["Message" JSON..= message]
instance Property "Message" MandatoryKeywordProperty where
  type PropertyType "Message" MandatoryKeywordProperty = Value Prelude.Text
  set newValue MandatoryKeywordProperty {..}
    = MandatoryKeywordProperty {message = newValue, ..}