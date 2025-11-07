module Stratosphere.BedrockAgentCore.GatewayTarget.S3ConfigurationProperty (
        S3ConfigurationProperty(..), mkS3ConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-s3configuration.html>
    S3ConfigurationProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-s3configuration.html#cfn-bedrockagentcore-gatewaytarget-s3configuration-bucketowneraccountid>
                             bucketOwnerAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-s3configuration.html#cfn-bedrockagentcore-gatewaytarget-s3configuration-uri>
                             uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ConfigurationProperty :: S3ConfigurationProperty
mkS3ConfigurationProperty
  = S3ConfigurationProperty
      {haddock_workaround_ = (), bucketOwnerAccountId = Prelude.Nothing,
       uri = Prelude.Nothing}
instance ToResourceProperties S3ConfigurationProperty where
  toResourceProperties S3ConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::GatewayTarget.S3Configuration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketOwnerAccountId" Prelude.<$> bucketOwnerAccountId,
                            (JSON..=) "Uri" Prelude.<$> uri])}
instance JSON.ToJSON S3ConfigurationProperty where
  toJSON S3ConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketOwnerAccountId" Prelude.<$> bucketOwnerAccountId,
               (JSON..=) "Uri" Prelude.<$> uri]))
instance Property "BucketOwnerAccountId" S3ConfigurationProperty where
  type PropertyType "BucketOwnerAccountId" S3ConfigurationProperty = Value Prelude.Text
  set newValue S3ConfigurationProperty {..}
    = S3ConfigurationProperty
        {bucketOwnerAccountId = Prelude.pure newValue, ..}
instance Property "Uri" S3ConfigurationProperty where
  type PropertyType "Uri" S3ConfigurationProperty = Value Prelude.Text
  set newValue S3ConfigurationProperty {..}
    = S3ConfigurationProperty {uri = Prelude.pure newValue, ..}