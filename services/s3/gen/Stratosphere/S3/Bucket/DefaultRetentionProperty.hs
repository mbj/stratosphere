module Stratosphere.S3.Bucket.DefaultRetentionProperty (
        DefaultRetentionProperty(..), mkDefaultRetentionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultRetentionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html>
    DefaultRetentionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html#cfn-s3-bucket-defaultretention-days>
                              days :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html#cfn-s3-bucket-defaultretention-mode>
                              mode :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html#cfn-s3-bucket-defaultretention-years>
                              years :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultRetentionProperty :: DefaultRetentionProperty
mkDefaultRetentionProperty
  = DefaultRetentionProperty
      {haddock_workaround_ = (), days = Prelude.Nothing,
       mode = Prelude.Nothing, years = Prelude.Nothing}
instance ToResourceProperties DefaultRetentionProperty where
  toResourceProperties DefaultRetentionProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.DefaultRetention",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Days" Prelude.<$> days,
                            (JSON..=) "Mode" Prelude.<$> mode,
                            (JSON..=) "Years" Prelude.<$> years])}
instance JSON.ToJSON DefaultRetentionProperty where
  toJSON DefaultRetentionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Days" Prelude.<$> days,
               (JSON..=) "Mode" Prelude.<$> mode,
               (JSON..=) "Years" Prelude.<$> years]))
instance Property "Days" DefaultRetentionProperty where
  type PropertyType "Days" DefaultRetentionProperty = Value Prelude.Integer
  set newValue DefaultRetentionProperty {..}
    = DefaultRetentionProperty {days = Prelude.pure newValue, ..}
instance Property "Mode" DefaultRetentionProperty where
  type PropertyType "Mode" DefaultRetentionProperty = Value Prelude.Text
  set newValue DefaultRetentionProperty {..}
    = DefaultRetentionProperty {mode = Prelude.pure newValue, ..}
instance Property "Years" DefaultRetentionProperty where
  type PropertyType "Years" DefaultRetentionProperty = Value Prelude.Integer
  set newValue DefaultRetentionProperty {..}
    = DefaultRetentionProperty {years = Prelude.pure newValue, ..}