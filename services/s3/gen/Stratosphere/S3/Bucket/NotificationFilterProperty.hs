module Stratosphere.S3.Bucket.NotificationFilterProperty (
        module Exports, NotificationFilterProperty(..),
        mkNotificationFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.S3KeyFilterProperty as Exports
import Stratosphere.ResourceProperties
data NotificationFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationfilter.html>
    NotificationFilterProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationfilter.html#cfn-s3-bucket-notificationfilter-s3key>
                                s3Key :: S3KeyFilterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationFilterProperty ::
  S3KeyFilterProperty -> NotificationFilterProperty
mkNotificationFilterProperty s3Key
  = NotificationFilterProperty
      {haddock_workaround_ = (), s3Key = s3Key}
instance ToResourceProperties NotificationFilterProperty where
  toResourceProperties NotificationFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.NotificationFilter",
         supportsTags = Prelude.False, properties = ["S3Key" JSON..= s3Key]}
instance JSON.ToJSON NotificationFilterProperty where
  toJSON NotificationFilterProperty {..}
    = JSON.object ["S3Key" JSON..= s3Key]
instance Property "S3Key" NotificationFilterProperty where
  type PropertyType "S3Key" NotificationFilterProperty = S3KeyFilterProperty
  set newValue NotificationFilterProperty {..}
    = NotificationFilterProperty {s3Key = newValue, ..}