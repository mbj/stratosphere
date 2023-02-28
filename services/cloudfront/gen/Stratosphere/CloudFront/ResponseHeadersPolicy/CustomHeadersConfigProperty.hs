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
  = CustomHeadersConfigProperty {items :: [CustomHeaderProperty]}
mkCustomHeadersConfigProperty ::
  [CustomHeaderProperty] -> CustomHeadersConfigProperty
mkCustomHeadersConfigProperty items
  = CustomHeadersConfigProperty {items = items}
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
  set newValue CustomHeadersConfigProperty {}
    = CustomHeadersConfigProperty {items = newValue, ..}