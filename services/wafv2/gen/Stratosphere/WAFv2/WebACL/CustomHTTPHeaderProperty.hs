module Stratosphere.WAFv2.WebACL.CustomHTTPHeaderProperty (
        CustomHTTPHeaderProperty(..), mkCustomHTTPHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomHTTPHeaderProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-customhttpheader.html>
    CustomHTTPHeaderProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-customhttpheader.html#cfn-wafv2-webacl-customhttpheader-name>
                              name :: (Value Prelude.Text),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-customhttpheader.html#cfn-wafv2-webacl-customhttpheader-value>
                              value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomHTTPHeaderProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomHTTPHeaderProperty
mkCustomHTTPHeaderProperty name value
  = CustomHTTPHeaderProperty {name = name, value = value}
instance ToResourceProperties CustomHTTPHeaderProperty where
  toResourceProperties CustomHTTPHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.CustomHTTPHeader",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON CustomHTTPHeaderProperty where
  toJSON CustomHTTPHeaderProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" CustomHTTPHeaderProperty where
  type PropertyType "Name" CustomHTTPHeaderProperty = Value Prelude.Text
  set newValue CustomHTTPHeaderProperty {..}
    = CustomHTTPHeaderProperty {name = newValue, ..}
instance Property "Value" CustomHTTPHeaderProperty where
  type PropertyType "Value" CustomHTTPHeaderProperty = Value Prelude.Text
  set newValue CustomHTTPHeaderProperty {..}
    = CustomHTTPHeaderProperty {value = newValue, ..}