module Stratosphere.KinesisFirehose.DeliveryStream.AmazonOpenSearchServerlessRetryOptionsProperty (
        AmazonOpenSearchServerlessRetryOptionsProperty(..),
        mkAmazonOpenSearchServerlessRetryOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmazonOpenSearchServerlessRetryOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessretryoptions.html>
    AmazonOpenSearchServerlessRetryOptionsProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessretryoptions.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessretryoptions-durationinseconds>
                                                    durationInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmazonOpenSearchServerlessRetryOptionsProperty ::
  AmazonOpenSearchServerlessRetryOptionsProperty
mkAmazonOpenSearchServerlessRetryOptionsProperty
  = AmazonOpenSearchServerlessRetryOptionsProperty
      {haddock_workaround_ = (), durationInSeconds = Prelude.Nothing}
instance ToResourceProperties AmazonOpenSearchServerlessRetryOptionsProperty where
  toResourceProperties
    AmazonOpenSearchServerlessRetryOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.AmazonOpenSearchServerlessRetryOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds])}
instance JSON.ToJSON AmazonOpenSearchServerlessRetryOptionsProperty where
  toJSON AmazonOpenSearchServerlessRetryOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds]))
instance Property "DurationInSeconds" AmazonOpenSearchServerlessRetryOptionsProperty where
  type PropertyType "DurationInSeconds" AmazonOpenSearchServerlessRetryOptionsProperty = Value Prelude.Integer
  set newValue AmazonOpenSearchServerlessRetryOptionsProperty {..}
    = AmazonOpenSearchServerlessRetryOptionsProperty
        {durationInSeconds = Prelude.pure newValue, ..}