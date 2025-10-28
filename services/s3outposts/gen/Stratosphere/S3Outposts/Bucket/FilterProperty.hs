module Stratosphere.S3Outposts.Bucket.FilterProperty (
        module Exports, FilterProperty(..), mkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Outposts.Bucket.FilterAndOperatorProperty as Exports
import {-# SOURCE #-} Stratosphere.S3Outposts.Bucket.FilterTagProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-bucket-filter.html>
    FilterProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-bucket-filter.html#cfn-s3outposts-bucket-filter-andoperator>
                    andOperator :: (Prelude.Maybe FilterAndOperatorProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-bucket-filter.html#cfn-s3outposts-bucket-filter-prefix>
                    prefix :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-bucket-filter.html#cfn-s3outposts-bucket-filter-tag>
                    tag :: (Prelude.Maybe FilterTagProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterProperty :: FilterProperty
mkFilterProperty
  = FilterProperty
      {haddock_workaround_ = (), andOperator = Prelude.Nothing,
       prefix = Prelude.Nothing, tag = Prelude.Nothing}
instance ToResourceProperties FilterProperty where
  toResourceProperties FilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::Bucket.Filter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AndOperator" Prelude.<$> andOperator,
                            (JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "Tag" Prelude.<$> tag])}
instance JSON.ToJSON FilterProperty where
  toJSON FilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AndOperator" Prelude.<$> andOperator,
               (JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "Tag" Prelude.<$> tag]))
instance Property "AndOperator" FilterProperty where
  type PropertyType "AndOperator" FilterProperty = FilterAndOperatorProperty
  set newValue FilterProperty {..}
    = FilterProperty {andOperator = Prelude.pure newValue, ..}
instance Property "Prefix" FilterProperty where
  type PropertyType "Prefix" FilterProperty = Value Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {prefix = Prelude.pure newValue, ..}
instance Property "Tag" FilterProperty where
  type PropertyType "Tag" FilterProperty = FilterTagProperty
  set newValue FilterProperty {..}
    = FilterProperty {tag = Prelude.pure newValue, ..}