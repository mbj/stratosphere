module Stratosphere.CloudFront.Distribution (
        module Exports, Distribution(..), mkDistribution
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.DistributionConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data Distribution
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distribution.html>
    Distribution {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distribution.html#cfn-cloudfront-distribution-distributionconfig>
                  distributionConfig :: DistributionConfigProperty,
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distribution.html#cfn-cloudfront-distribution-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDistribution :: DistributionConfigProperty -> Distribution
mkDistribution distributionConfig
  = Distribution
      {haddock_workaround_ = (), distributionConfig = distributionConfig,
       tags = Prelude.Nothing}
instance ToResourceProperties Distribution where
  toResourceProperties Distribution {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DistributionConfig" JSON..= distributionConfig]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Distribution where
  toJSON Distribution {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DistributionConfig" JSON..= distributionConfig]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DistributionConfig" Distribution where
  type PropertyType "DistributionConfig" Distribution = DistributionConfigProperty
  set newValue Distribution {..}
    = Distribution {distributionConfig = newValue, ..}
instance Property "Tags" Distribution where
  type PropertyType "Tags" Distribution = [Tag]
  set newValue Distribution {..}
    = Distribution {tags = Prelude.pure newValue, ..}