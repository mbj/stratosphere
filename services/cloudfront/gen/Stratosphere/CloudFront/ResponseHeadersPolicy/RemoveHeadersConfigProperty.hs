module Stratosphere.CloudFront.ResponseHeadersPolicy.RemoveHeadersConfigProperty (
        module Exports, RemoveHeadersConfigProperty(..),
        mkRemoveHeadersConfigProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.RemoveHeaderProperty as Exports
import Stratosphere.ResourceProperties
data RemoveHeadersConfigProperty
  = RemoveHeadersConfigProperty {items :: [RemoveHeaderProperty]}
mkRemoveHeadersConfigProperty ::
  [RemoveHeaderProperty] -> RemoveHeadersConfigProperty
mkRemoveHeadersConfigProperty items
  = RemoveHeadersConfigProperty {items = items}
instance ToResourceProperties RemoveHeadersConfigProperty where
  toResourceProperties RemoveHeadersConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.RemoveHeadersConfig",
         properties = ["Items" JSON..= items]}
instance JSON.ToJSON RemoveHeadersConfigProperty where
  toJSON RemoveHeadersConfigProperty {..}
    = JSON.object ["Items" JSON..= items]
instance Property "Items" RemoveHeadersConfigProperty where
  type PropertyType "Items" RemoveHeadersConfigProperty = [RemoveHeaderProperty]
  set newValue RemoveHeadersConfigProperty {}
    = RemoveHeadersConfigProperty {items = newValue, ..}