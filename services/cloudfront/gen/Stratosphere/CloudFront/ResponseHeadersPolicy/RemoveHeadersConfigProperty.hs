module Stratosphere.CloudFront.ResponseHeadersPolicy.RemoveHeadersConfigProperty (
        module Exports, RemoveHeadersConfigProperty(..),
        mkRemoveHeadersConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.RemoveHeaderProperty as Exports
import Stratosphere.ResourceProperties
data RemoveHeadersConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-removeheadersconfig.html>
    RemoveHeadersConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-removeheadersconfig.html#cfn-cloudfront-responseheaderspolicy-removeheadersconfig-items>
                                 items :: [RemoveHeaderProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRemoveHeadersConfigProperty ::
  [RemoveHeaderProperty] -> RemoveHeadersConfigProperty
mkRemoveHeadersConfigProperty items
  = RemoveHeadersConfigProperty
      {haddock_workaround_ = (), items = items}
instance ToResourceProperties RemoveHeadersConfigProperty where
  toResourceProperties RemoveHeadersConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.RemoveHeadersConfig",
         supportsTags = Prelude.False, properties = ["Items" JSON..= items]}
instance JSON.ToJSON RemoveHeadersConfigProperty where
  toJSON RemoveHeadersConfigProperty {..}
    = JSON.object ["Items" JSON..= items]
instance Property "Items" RemoveHeadersConfigProperty where
  type PropertyType "Items" RemoveHeadersConfigProperty = [RemoveHeaderProperty]
  set newValue RemoveHeadersConfigProperty {..}
    = RemoveHeadersConfigProperty {items = newValue, ..}