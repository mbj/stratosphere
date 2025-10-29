module Stratosphere.ElasticLoadBalancing.LoadBalancer.AccessLoggingPolicyProperty (
        AccessLoggingPolicyProperty(..), mkAccessLoggingPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessLoggingPolicyProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html>
    AccessLoggingPolicyProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-emitinterval>
                                 emitInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-enabled>
                                 enabled :: (Value Prelude.Bool),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-s3bucketname>
                                 s3BucketName :: (Value Prelude.Text),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-s3bucketprefix>
                                 s3BucketPrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessLoggingPolicyProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text -> AccessLoggingPolicyProperty
mkAccessLoggingPolicyProperty enabled s3BucketName
  = AccessLoggingPolicyProperty
      {enabled = enabled, s3BucketName = s3BucketName,
       emitInterval = Prelude.Nothing, s3BucketPrefix = Prelude.Nothing}
instance ToResourceProperties AccessLoggingPolicyProperty where
  toResourceProperties AccessLoggingPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancing::LoadBalancer.AccessLoggingPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled, "S3BucketName" JSON..= s3BucketName]
                           (Prelude.catMaybes
                              [(JSON..=) "EmitInterval" Prelude.<$> emitInterval,
                               (JSON..=) "S3BucketPrefix" Prelude.<$> s3BucketPrefix]))}
instance JSON.ToJSON AccessLoggingPolicyProperty where
  toJSON AccessLoggingPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled, "S3BucketName" JSON..= s3BucketName]
              (Prelude.catMaybes
                 [(JSON..=) "EmitInterval" Prelude.<$> emitInterval,
                  (JSON..=) "S3BucketPrefix" Prelude.<$> s3BucketPrefix])))
instance Property "EmitInterval" AccessLoggingPolicyProperty where
  type PropertyType "EmitInterval" AccessLoggingPolicyProperty = Value Prelude.Integer
  set newValue AccessLoggingPolicyProperty {..}
    = AccessLoggingPolicyProperty
        {emitInterval = Prelude.pure newValue, ..}
instance Property "Enabled" AccessLoggingPolicyProperty where
  type PropertyType "Enabled" AccessLoggingPolicyProperty = Value Prelude.Bool
  set newValue AccessLoggingPolicyProperty {..}
    = AccessLoggingPolicyProperty {enabled = newValue, ..}
instance Property "S3BucketName" AccessLoggingPolicyProperty where
  type PropertyType "S3BucketName" AccessLoggingPolicyProperty = Value Prelude.Text
  set newValue AccessLoggingPolicyProperty {..}
    = AccessLoggingPolicyProperty {s3BucketName = newValue, ..}
instance Property "S3BucketPrefix" AccessLoggingPolicyProperty where
  type PropertyType "S3BucketPrefix" AccessLoggingPolicyProperty = Value Prelude.Text
  set newValue AccessLoggingPolicyProperty {..}
    = AccessLoggingPolicyProperty
        {s3BucketPrefix = Prelude.pure newValue, ..}