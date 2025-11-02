module Stratosphere.CloudFront.ResponseHeadersPolicy.CustomHeadersConfigProperty (
        module Exports, CustomHeadersConfigProperty(..),
        mkCustomHeadersConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.CustomHeaderProperty as Exports
import Stratosphere.ResourceProperties
data CustomHeadersConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-customheadersconfig.html>
    CustomHeadersConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-responseheaderspolicy-customheadersconfig.html#cfn-cloudfront-responseheaderspolicy-customheadersconfig-items>
                                 items :: [CustomHeaderProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomHeadersConfigProperty ::
  [CustomHeaderProperty] -> CustomHeadersConfigProperty
mkCustomHeadersConfigProperty items
  = CustomHeadersConfigProperty
      {haddock_workaround_ = (), items = items}
instance ToResourceProperties CustomHeadersConfigProperty where
  toResourceProperties CustomHeadersConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.CustomHeadersConfig",
         supportsTags = Prelude.False, properties = ["Items" JSON..= items]}
instance JSON.ToJSON CustomHeadersConfigProperty where
  toJSON CustomHeadersConfigProperty {..}
    = JSON.object ["Items" JSON..= items]
instance Property "Items" CustomHeadersConfigProperty where
  type PropertyType "Items" CustomHeadersConfigProperty = [CustomHeaderProperty]
  set newValue CustomHeadersConfigProperty {..}
    = CustomHeadersConfigProperty {items = newValue, ..}