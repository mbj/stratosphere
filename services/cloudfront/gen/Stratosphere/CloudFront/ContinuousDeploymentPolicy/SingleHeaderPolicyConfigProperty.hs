module Stratosphere.CloudFront.ContinuousDeploymentPolicy.SingleHeaderPolicyConfigProperty (
        SingleHeaderPolicyConfigProperty(..),
        mkSingleHeaderPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SingleHeaderPolicyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-singleheaderpolicyconfig.html>
    SingleHeaderPolicyConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-singleheaderpolicyconfig.html#cfn-cloudfront-continuousdeploymentpolicy-singleheaderpolicyconfig-header>
                                      header :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-singleheaderpolicyconfig.html#cfn-cloudfront-continuousdeploymentpolicy-singleheaderpolicyconfig-value>
                                      value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingleHeaderPolicyConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SingleHeaderPolicyConfigProperty
mkSingleHeaderPolicyConfigProperty header value
  = SingleHeaderPolicyConfigProperty
      {haddock_workaround_ = (), header = header, value = value}
instance ToResourceProperties SingleHeaderPolicyConfigProperty where
  toResourceProperties SingleHeaderPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ContinuousDeploymentPolicy.SingleHeaderPolicyConfig",
         supportsTags = Prelude.False,
         properties = ["Header" JSON..= header, "Value" JSON..= value]}
instance JSON.ToJSON SingleHeaderPolicyConfigProperty where
  toJSON SingleHeaderPolicyConfigProperty {..}
    = JSON.object ["Header" JSON..= header, "Value" JSON..= value]
instance Property "Header" SingleHeaderPolicyConfigProperty where
  type PropertyType "Header" SingleHeaderPolicyConfigProperty = Value Prelude.Text
  set newValue SingleHeaderPolicyConfigProperty {..}
    = SingleHeaderPolicyConfigProperty {header = newValue, ..}
instance Property "Value" SingleHeaderPolicyConfigProperty where
  type PropertyType "Value" SingleHeaderPolicyConfigProperty = Value Prelude.Text
  set newValue SingleHeaderPolicyConfigProperty {..}
    = SingleHeaderPolicyConfigProperty {value = newValue, ..}