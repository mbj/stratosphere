module Stratosphere.MSK.Cluster.S3Property (
        S3Property(..), mkS3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-s3.html>
    S3Property {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-s3.html#cfn-msk-cluster-s3-bucket>
                bucket :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-s3.html#cfn-msk-cluster-s3-enabled>
                enabled :: (Value Prelude.Bool),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-s3.html#cfn-msk-cluster-s3-prefix>
                prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3Property :: Value Prelude.Bool -> S3Property
mkS3Property enabled
  = S3Property
      {haddock_workaround_ = (), enabled = enabled,
       bucket = Prelude.Nothing, prefix = Prelude.Nothing}
instance ToResourceProperties S3Property where
  toResourceProperties S3Property {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.S3", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "Bucket" Prelude.<$> bucket,
                               (JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON S3Property where
  toJSON S3Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "Bucket" Prelude.<$> bucket,
                  (JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "Bucket" S3Property where
  type PropertyType "Bucket" S3Property = Value Prelude.Text
  set newValue S3Property {..}
    = S3Property {bucket = Prelude.pure newValue, ..}
instance Property "Enabled" S3Property where
  type PropertyType "Enabled" S3Property = Value Prelude.Bool
  set newValue S3Property {..} = S3Property {enabled = newValue, ..}
instance Property "Prefix" S3Property where
  type PropertyType "Prefix" S3Property = Value Prelude.Text
  set newValue S3Property {..}
    = S3Property {prefix = Prelude.pure newValue, ..}