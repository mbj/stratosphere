module Stratosphere.CloudFront.ResponseHeadersPolicy.FrameOptionsProperty (
        FrameOptionsProperty(..), mkFrameOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FrameOptionsProperty
  = FrameOptionsProperty {frameOption :: (Value Prelude.Text),
                          override :: (Value Prelude.Bool)}
mkFrameOptionsProperty ::
  Value Prelude.Text -> Value Prelude.Bool -> FrameOptionsProperty
mkFrameOptionsProperty frameOption override
  = FrameOptionsProperty
      {frameOption = frameOption, override = override}
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