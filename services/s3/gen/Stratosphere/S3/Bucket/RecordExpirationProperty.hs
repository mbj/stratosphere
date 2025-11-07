module Stratosphere.S3.Bucket.RecordExpirationProperty (
        RecordExpirationProperty(..), mkRecordExpirationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordExpirationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-recordexpiration.html>
    RecordExpirationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-recordexpiration.html#cfn-s3-bucket-recordexpiration-days>
                              days :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-recordexpiration.html#cfn-s3-bucket-recordexpiration-expiration>
                              expiration :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordExpirationProperty ::
  Value Prelude.Text -> RecordExpirationProperty
mkRecordExpirationProperty expiration
  = RecordExpirationProperty
      {haddock_workaround_ = (), expiration = expiration,
       days = Prelude.Nothing}
instance ToResourceProperties RecordExpirationProperty where
  toResourceProperties RecordExpirationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.RecordExpiration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expiration" JSON..= expiration]
                           (Prelude.catMaybes [(JSON..=) "Days" Prelude.<$> days]))}
instance JSON.ToJSON RecordExpirationProperty where
  toJSON RecordExpirationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expiration" JSON..= expiration]
              (Prelude.catMaybes [(JSON..=) "Days" Prelude.<$> days])))
instance Property "Days" RecordExpirationProperty where
  type PropertyType "Days" RecordExpirationProperty = Value Prelude.Integer
  set newValue RecordExpirationProperty {..}
    = RecordExpirationProperty {days = Prelude.pure newValue, ..}
instance Property "Expiration" RecordExpirationProperty where
  type PropertyType "Expiration" RecordExpirationProperty = Value Prelude.Text
  set newValue RecordExpirationProperty {..}
    = RecordExpirationProperty {expiration = newValue, ..}