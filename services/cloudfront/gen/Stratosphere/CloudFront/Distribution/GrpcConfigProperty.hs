module Stratosphere.CloudFront.Distribution.GrpcConfigProperty (
        GrpcConfigProperty(..), mkGrpcConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrpcConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-grpcconfig.html>
    GrpcConfigProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-grpcconfig.html#cfn-cloudfront-distribution-grpcconfig-enabled>
                        enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrpcConfigProperty :: Value Prelude.Bool -> GrpcConfigProperty
mkGrpcConfigProperty enabled
  = GrpcConfigProperty {haddock_workaround_ = (), enabled = enabled}
instance ToResourceProperties GrpcConfigProperty where
  toResourceProperties GrpcConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.GrpcConfig",
         supportsTags = Prelude.False,
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON GrpcConfigProperty where
  toJSON GrpcConfigProperty {..}
    = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" GrpcConfigProperty where
  type PropertyType "Enabled" GrpcConfigProperty = Value Prelude.Bool
  set newValue GrpcConfigProperty {..}
    = GrpcConfigProperty {enabled = newValue, ..}