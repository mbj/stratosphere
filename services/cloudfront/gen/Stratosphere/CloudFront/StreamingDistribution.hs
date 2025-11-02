module Stratosphere.CloudFront.StreamingDistribution (
        module Exports, StreamingDistribution(..), mkStreamingDistribution
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.StreamingDistribution.StreamingDistributionConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data StreamingDistribution
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-streamingdistribution.html>
    StreamingDistribution {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-streamingdistribution.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig>
                           streamingDistributionConfig :: StreamingDistributionConfigProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-streamingdistribution.html#cfn-cloudfront-streamingdistribution-tags>
                           tags :: [Tag]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamingDistribution ::
  StreamingDistributionConfigProperty
  -> [Tag] -> StreamingDistribution
mkStreamingDistribution streamingDistributionConfig tags
  = StreamingDistribution
      {haddock_workaround_ = (),
       streamingDistributionConfig = streamingDistributionConfig,
       tags = tags}
instance ToResourceProperties StreamingDistribution where
  toResourceProperties StreamingDistribution {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::StreamingDistribution",
         supportsTags = Prelude.True,
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