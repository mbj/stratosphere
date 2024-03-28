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
  = SingleHeaderPolicyConfigProperty {header :: (Value Prelude.Text),
                                      value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingleHeaderPolicyConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SingleHeaderPolicyConfigProperty
mkSingleHeaderPolicyConfigProperty header value
  = SingleHeaderPolicyConfigProperty {header = header, value = value}
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