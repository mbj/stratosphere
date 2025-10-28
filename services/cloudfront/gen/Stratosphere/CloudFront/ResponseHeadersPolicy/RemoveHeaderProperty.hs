module Stratosphere.CloudFront.ResponseHeadersPolicy.RemoveHeaderProperty (
        RemoveHeaderProperty(..), mkRemoveHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RemoveHeaderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-removeheader.html>
    RemoveHeaderProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-removeheader.html#cfn-cloudfront-responseheaderspolicy-removeheader-header>
                          header :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRemoveHeaderProperty ::
  Value Prelude.Text -> RemoveHeaderProperty
mkRemoveHeaderProperty header
  = RemoveHeaderProperty {haddock_workaround_ = (), header = header}
instance ToResourceProperties RemoveHeaderProperty where
  toResourceProperties RemoveHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.RemoveHeader",
         supportsTags = Prelude.False,
         properties = ["Header" JSON..= header]}
instance JSON.ToJSON RemoveHeaderProperty where
  toJSON RemoveHeaderProperty {..}
    = JSON.object ["Header" JSON..= header]
instance Property "Header" RemoveHeaderProperty where
  type PropertyType "Header" RemoveHeaderProperty = Value Prelude.Text
  set newValue RemoveHeaderProperty {..}
    = RemoveHeaderProperty {header = newValue, ..}