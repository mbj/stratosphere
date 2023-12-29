module Stratosphere.KinesisFirehose.DeliveryStream.AmazonopensearchserviceRetryOptionsProperty (
        AmazonopensearchserviceRetryOptionsProperty(..),
        mkAmazonopensearchserviceRetryOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmazonopensearchserviceRetryOptionsProperty
  = AmazonopensearchserviceRetryOptionsProperty {durationInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmazonopensearchserviceRetryOptionsProperty ::
  AmazonopensearchserviceRetryOptionsProperty
mkAmazonopensearchserviceRetryOptionsProperty
  = AmazonopensearchserviceRetryOptionsProperty
      {durationInSeconds = Prelude.Nothing}
instance ToResourceProperties AmazonopensearchserviceRetryOptionsProperty where
  toResourceProperties
    AmazonopensearchserviceRetryOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.AmazonopensearchserviceRetryOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds])}
instance JSON.ToJSON AmazonopensearchserviceRetryOptionsProperty where
  toJSON AmazonopensearchserviceRetryOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds]))
instance Property "DurationInSeconds" AmazonopensearchserviceRetryOptionsProperty where
  type PropertyType "DurationInSeconds" AmazonopensearchserviceRetryOptionsProperty = Value Prelude.Integer
  set newValue AmazonopensearchserviceRetryOptionsProperty {}
    = AmazonopensearchserviceRetryOptionsProperty
        {durationInSeconds = Prelude.pure newValue, ..}