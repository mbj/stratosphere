module Stratosphere.DataBrew.Job.OutputLocationProperty (
        OutputLocationProperty(..), mkOutputLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputLocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-outputlocation.html>
    OutputLocationProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-outputlocation.html#cfn-databrew-job-outputlocation-bucket>
                            bucket :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-outputlocation.html#cfn-databrew-job-outputlocation-bucketowner>
                            bucketOwner :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-outputlocation.html#cfn-databrew-job-outputlocation-key>
                            key :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputLocationProperty ::
  Value Prelude.Text -> OutputLocationProperty
mkOutputLocationProperty bucket
  = OutputLocationProperty
      {haddock_workaround_ = (), bucket = bucket,
       bucketOwner = Prelude.Nothing, key = Prelude.Nothing}
instance ToResourceProperties OutputLocationProperty where
  toResourceProperties OutputLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.OutputLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketOwner" Prelude.<$> bucketOwner,
                               (JSON..=) "Key" Prelude.<$> key]))}
instance JSON.ToJSON OutputLocationProperty where
  toJSON OutputLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket]
              (Prelude.catMaybes
                 [(JSON..=) "BucketOwner" Prelude.<$> bucketOwner,
                  (JSON..=) "Key" Prelude.<$> key])))
instance Property "Bucket" OutputLocationProperty where
  type PropertyType "Bucket" OutputLocationProperty = Value Prelude.Text
  set newValue OutputLocationProperty {..}
    = OutputLocationProperty {bucket = newValue, ..}
instance Property "BucketOwner" OutputLocationProperty where
  type PropertyType "BucketOwner" OutputLocationProperty = Value Prelude.Text
  set newValue OutputLocationProperty {..}
    = OutputLocationProperty {bucketOwner = Prelude.pure newValue, ..}
instance Property "Key" OutputLocationProperty where
  type PropertyType "Key" OutputLocationProperty = Value Prelude.Text
  set newValue OutputLocationProperty {..}
    = OutputLocationProperty {key = Prelude.pure newValue, ..}