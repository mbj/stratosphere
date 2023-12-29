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
  = Distribution {distributionConfig :: DistributionConfigProperty,
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDistribution :: DistributionConfigProperty -> Distribution
mkDistribution distributionConfig
  = Distribution
      {distributionConfig = distributionConfig, tags = Prelude.Nothing}
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