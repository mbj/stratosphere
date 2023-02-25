module Stratosphere.CloudFront.StreamingDistribution (
        module Exports, StreamingDistribution(..), mkStreamingDistribution
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.StreamingDistribution.StreamingDistributionConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data StreamingDistribution
  = StreamingDistribution {streamingDistributionConfig :: StreamingDistributionConfigProperty,
                           tags :: [Tag]}
mkStreamingDistribution ::
  StreamingDistributionConfigProperty
  -> [Tag] -> StreamingDistribution
mkStreamingDistribution streamingDistributionConfig tags
  = StreamingDistribution
      {streamingDistributionConfig = streamingDistributionConfig,
       tags = tags}
instance ToResourceProperties StreamingDistribution where
  toResourceProperties StreamingDistribution {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::StreamingDistribution",
         properties = ["StreamingDistributionConfig"
                         JSON..= streamingDistributionConfig,
                       "Tags" JSON..= tags]}
instance JSON.ToJSON StreamingDistribution where
  toJSON StreamingDistribution {..}
    = JSON.object
        ["StreamingDistributionConfig" JSON..= streamingDistributionConfig,
         "Tags" JSON..= tags]
instance Property "StreamingDistributionConfig" StreamingDistribution where
  type PropertyType "StreamingDistributionConfig" StreamingDistribution = StreamingDistributionConfigProperty
  set newValue StreamingDistribution {..}
    = StreamingDistribution
        {streamingDistributionConfig = newValue, ..}
instance Property "Tags" StreamingDistribution where
  type PropertyType "Tags" StreamingDistribution = [Tag]
  set newValue StreamingDistribution {..}
    = StreamingDistribution {tags = newValue, ..}