module Stratosphere.CloudFront.ResponseHeadersPolicy.CustomHeaderProperty (
        CustomHeaderProperty(..), mkCustomHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomHeaderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-customheader.html>
    CustomHeaderProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-customheader.html#cfn-cloudfront-responseheaderspolicy-customheader-header>
                          header :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-customheader.html#cfn-cloudfront-responseheaderspolicy-customheader-override>
                          override :: (Value Prelude.Bool),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-customheader.html#cfn-cloudfront-responseheaderspolicy-customheader-value>
                          value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomHeaderProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool -> Value Prelude.Text -> CustomHeaderProperty
mkCustomHeaderProperty header override value
  = CustomHeaderProperty
      {haddock_workaround_ = (), header = header, override = override,
       value = value}
instance ToResourceProperties CustomHeaderProperty where
  toResourceProperties CustomHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.CustomHeader",
         supportsTags = Prelude.False,
         properties = ["Header" JSON..= header, "Override" JSON..= override,
                       "Value" JSON..= value]}
instance JSON.ToJSON CustomHeaderProperty where
  toJSON CustomHeaderProperty {..}
    = JSON.object
        ["Header" JSON..= header, "Override" JSON..= override,
         "Value" JSON..= value]
instance Property "Header" CustomHeaderProperty where
  type PropertyType "Header" CustomHeaderProperty = Value Prelude.Text
  set newValue CustomHeaderProperty {..}
    = CustomHeaderProperty {header = newValue, ..}
instance Property "Override" CustomHeaderProperty where
  type PropertyType "Override" CustomHeaderProperty = Value Prelude.Bool
  set newValue CustomHeaderProperty {..}
    = CustomHeaderProperty {override = newValue, ..}
instance Property "Value" CustomHeaderProperty where
  type PropertyType "Value" CustomHeaderProperty = Value Prelude.Text
  set newValue CustomHeaderProperty {..}
    = CustomHeaderProperty {value = newValue, ..}