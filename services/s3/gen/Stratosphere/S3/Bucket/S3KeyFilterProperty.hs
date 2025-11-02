module Stratosphere.S3.Bucket.S3KeyFilterProperty (
        module Exports, S3KeyFilterProperty(..), mkS3KeyFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.FilterRuleProperty as Exports
import Stratosphere.ResourceProperties
data S3KeyFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-s3keyfilter.html>
    S3KeyFilterProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-s3keyfilter.html#cfn-s3-bucket-s3keyfilter-rules>
                         rules :: [FilterRuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3KeyFilterProperty ::
  [FilterRuleProperty] -> S3KeyFilterProperty
mkS3KeyFilterProperty rules
  = S3KeyFilterProperty {haddock_workaround_ = (), rules = rules}
instance ToResourceProperties S3KeyFilterProperty where
  toResourceProperties S3KeyFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.S3KeyFilter",
         supportsTags = Prelude.False, properties = ["Rules" JSON..= rules]}
instance JSON.ToJSON S3KeyFilterProperty where
  toJSON S3KeyFilterProperty {..}
    = JSON.object ["Rules" JSON..= rules]
instance Property "Rules" S3KeyFilterProperty where
  type PropertyType "Rules" S3KeyFilterProperty = [FilterRuleProperty]
  set newValue S3KeyFilterProperty {..}
    = S3KeyFilterProperty {rules = newValue, ..}