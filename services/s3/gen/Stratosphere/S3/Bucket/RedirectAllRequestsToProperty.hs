module Stratosphere.S3.Bucket.RedirectAllRequestsToProperty (
        RedirectAllRequestsToProperty(..), mkRedirectAllRequestsToProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedirectAllRequestsToProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-redirectallrequeststo.html>
    RedirectAllRequestsToProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-redirectallrequeststo.html#cfn-s3-bucket-redirectallrequeststo-hostname>
                                   hostName :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-redirectallrequeststo.html#cfn-s3-bucket-redirectallrequeststo-protocol>
                                   protocol :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedirectAllRequestsToProperty ::
  Value Prelude.Text -> RedirectAllRequestsToProperty
mkRedirectAllRequestsToProperty hostName
  = RedirectAllRequestsToProperty
      {haddock_workaround_ = (), hostName = hostName,
       protocol = Prelude.Nothing}
instance ToResourceProperties RedirectAllRequestsToProperty where
  toResourceProperties RedirectAllRequestsToProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.RedirectAllRequestsTo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HostName" JSON..= hostName]
                           (Prelude.catMaybes [(JSON..=) "Protocol" Prelude.<$> protocol]))}
instance JSON.ToJSON RedirectAllRequestsToProperty where
  toJSON RedirectAllRequestsToProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HostName" JSON..= hostName]
              (Prelude.catMaybes [(JSON..=) "Protocol" Prelude.<$> protocol])))
instance Property "HostName" RedirectAllRequestsToProperty where
  type PropertyType "HostName" RedirectAllRequestsToProperty = Value Prelude.Text
  set newValue RedirectAllRequestsToProperty {..}
    = RedirectAllRequestsToProperty {hostName = newValue, ..}
instance Property "Protocol" RedirectAllRequestsToProperty where
  type PropertyType "Protocol" RedirectAllRequestsToProperty = Value Prelude.Text
  set newValue RedirectAllRequestsToProperty {..}
    = RedirectAllRequestsToProperty
        {protocol = Prelude.pure newValue, ..}