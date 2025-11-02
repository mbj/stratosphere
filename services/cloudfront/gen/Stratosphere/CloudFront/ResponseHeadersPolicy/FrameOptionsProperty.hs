module Stratosphere.CloudFront.ResponseHeadersPolicy.FrameOptionsProperty (
        FrameOptionsProperty(..), mkFrameOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FrameOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-frameoptions.html>
    FrameOptionsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-frameoptions.html#cfn-cloudfront-responseheaderspolicy-frameoptions-frameoption>
                          frameOption :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-frameoptions.html#cfn-cloudfront-responseheaderspolicy-frameoptions-override>
                          override :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFrameOptionsProperty ::
  Value Prelude.Text -> Value Prelude.Bool -> FrameOptionsProperty
mkFrameOptionsProperty frameOption override
  = FrameOptionsProperty
      {haddock_workaround_ = (), frameOption = frameOption,
       override = override}
instance ToResourceProperties FrameOptionsProperty where
  toResourceProperties FrameOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.FrameOptions",
         supportsTags = Prelude.False,
         properties = ["FrameOption" JSON..= frameOption,
                       "Override" JSON..= override]}
instance JSON.ToJSON FrameOptionsProperty where
  toJSON FrameOptionsProperty {..}
    = JSON.object
        ["FrameOption" JSON..= frameOption, "Override" JSON..= override]
instance Property "FrameOption" FrameOptionsProperty where
  type PropertyType "FrameOption" FrameOptionsProperty = Value Prelude.Text
  set newValue FrameOptionsProperty {..}
    = FrameOptionsProperty {frameOption = newValue, ..}
instance Property "Override" FrameOptionsProperty where
  type PropertyType "Override" FrameOptionsProperty = Value Prelude.Bool
  set newValue FrameOptionsProperty {..}
    = FrameOptionsProperty {override = newValue, ..}