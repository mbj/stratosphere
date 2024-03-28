module Stratosphere.S3Outposts.Endpoint.FailedReasonProperty (
        FailedReasonProperty(..), mkFailedReasonProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FailedReasonProperty
  = FailedReasonProperty {errorCode :: (Prelude.Maybe (Value Prelude.Text)),
                          message :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFailedReasonProperty :: FailedReasonProperty
mkFailedReasonProperty
  = FailedReasonProperty
      {errorCode = Prelude.Nothing, message = Prelude.Nothing}
instance ToResourceProperties FailedReasonProperty where
  toResourceProperties FailedReasonProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::Endpoint.FailedReason",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ErrorCode" Prelude.<$> errorCode,
                            (JSON..=) "Message" Prelude.<$> message])}
instance JSON.ToJSON FailedReasonProperty where
  toJSON FailedReasonProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ErrorCode" Prelude.<$> errorCode,
               (JSON..=) "Message" Prelude.<$> message]))
instance Property "ErrorCode" FailedReasonProperty where
  type PropertyType "ErrorCode" FailedReasonProperty = Value Prelude.Text
  set newValue FailedReasonProperty {..}
    = FailedReasonProperty {errorCode = Prelude.pure newValue, ..}
instance Property "Message" FailedReasonProperty where
  type PropertyType "Message" FailedReasonProperty = Value Prelude.Text
  set newValue FailedReasonProperty {..}
    = FailedReasonProperty {message = Prelude.pure newValue, ..}