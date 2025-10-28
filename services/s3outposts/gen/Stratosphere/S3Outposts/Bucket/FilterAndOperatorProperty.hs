module Stratosphere.S3Outposts.Bucket.FilterAndOperatorProperty (
        module Exports, FilterAndOperatorProperty(..),
        mkFilterAndOperatorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Outposts.Bucket.FilterTagProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterAndOperatorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-bucket-filterandoperator.html>
    FilterAndOperatorProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-bucket-filterandoperator.html#cfn-s3outposts-bucket-filterandoperator-prefix>
                               prefix :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-bucket-filterandoperator.html#cfn-s3outposts-bucket-filterandoperator-tags>
                               tags :: [FilterTagProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterAndOperatorProperty ::
  [FilterTagProperty] -> FilterAndOperatorProperty
mkFilterAndOperatorProperty tags
  = FilterAndOperatorProperty
      {haddock_workaround_ = (), tags = tags, prefix = Prelude.Nothing}
instance ToResourceProperties FilterAndOperatorProperty where
  toResourceProperties FilterAndOperatorProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::Bucket.FilterAndOperator",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Tags" JSON..= tags]
                           (Prelude.catMaybes [(JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON FilterAndOperatorProperty where
  toJSON FilterAndOperatorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Tags" JSON..= tags]
              (Prelude.catMaybes [(JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "Prefix" FilterAndOperatorProperty where
  type PropertyType "Prefix" FilterAndOperatorProperty = Value Prelude.Text
  set newValue FilterAndOperatorProperty {..}
    = FilterAndOperatorProperty {prefix = Prelude.pure newValue, ..}
instance Property "Tags" FilterAndOperatorProperty where
  type PropertyType "Tags" FilterAndOperatorProperty = [FilterTagProperty]
  set newValue FilterAndOperatorProperty {..}
    = FilterAndOperatorProperty {tags = newValue, ..}