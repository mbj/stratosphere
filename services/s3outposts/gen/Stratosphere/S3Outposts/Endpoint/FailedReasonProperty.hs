module Stratosphere.S3Outposts.Endpoint.FailedReasonProperty (
        FailedReasonProperty(..), mkFailedReasonProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FailedReasonProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-endpoint-failedreason.html>
    FailedReasonProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-endpoint-failedreason.html#cfn-s3outposts-endpoint-failedreason-errorcode>
                          errorCode :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-endpoint-failedreason.html#cfn-s3outposts-endpoint-failedreason-message>
                          message :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFailedReasonProperty :: FailedReasonProperty
mkFailedReasonProperty
  = FailedReasonProperty
      {haddock_workaround_ = (), errorCode = Prelude.Nothing,
       message = Prelude.Nothing}
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