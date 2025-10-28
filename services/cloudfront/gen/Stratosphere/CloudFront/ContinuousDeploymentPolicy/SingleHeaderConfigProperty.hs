module Stratosphere.CloudFront.ContinuousDeploymentPolicy.SingleHeaderConfigProperty (
        SingleHeaderConfigProperty(..), mkSingleHeaderConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SingleHeaderConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-singleheaderconfig.html>
    SingleHeaderConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-singleheaderconfig.html#cfn-cloudfront-continuousdeploymentpolicy-singleheaderconfig-header>
                                header :: (Value Prelude.Text),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-singleheaderconfig.html#cfn-cloudfront-continuousdeploymentpolicy-singleheaderconfig-value>
                                value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingleHeaderConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SingleHeaderConfigProperty
mkSingleHeaderConfigProperty header value
  = SingleHeaderConfigProperty {header = header, value = value}
instance ToResourceProperties SingleHeaderConfigProperty where
  toResourceProperties SingleHeaderConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ContinuousDeploymentPolicy.SingleHeaderConfig",
         supportsTags = Prelude.False,
         properties = ["Header" JSON..= header, "Value" JSON..= value]}
instance JSON.ToJSON SingleHeaderConfigProperty where
  toJSON SingleHeaderConfigProperty {..}
    = JSON.object ["Header" JSON..= header, "Value" JSON..= value]
instance Property "Header" SingleHeaderConfigProperty where
  type PropertyType "Header" SingleHeaderConfigProperty = Value Prelude.Text
  set newValue SingleHeaderConfigProperty {..}
    = SingleHeaderConfigProperty {header = newValue, ..}
instance Property "Value" SingleHeaderConfigProperty where
  type PropertyType "Value" SingleHeaderConfigProperty = Value Prelude.Text
  set newValue SingleHeaderConfigProperty {..}
    = SingleHeaderConfigProperty {value = newValue, ..}