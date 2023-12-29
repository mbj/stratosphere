module Stratosphere.WAFv2.WebACL.CustomRequestHandlingProperty (
        module Exports, CustomRequestHandlingProperty(..),
        mkCustomRequestHandlingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.CustomHTTPHeaderProperty as Exports
import Stratosphere.ResourceProperties
data CustomRequestHandlingProperty
  = CustomRequestHandlingProperty {insertHeaders :: [CustomHTTPHeaderProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomRequestHandlingProperty ::
  [CustomHTTPHeaderProperty] -> CustomRequestHandlingProperty
mkCustomRequestHandlingProperty insertHeaders
  = CustomRequestHandlingProperty {insertHeaders = insertHeaders}
instance ToResourceProperties CustomRequestHandlingProperty where
  toResourceProperties CustomRequestHandlingProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.CustomRequestHandling",
         supportsTags = Prelude.False,
         properties = ["InsertHeaders" JSON..= insertHeaders]}
instance JSON.ToJSON CustomRequestHandlingProperty where
  toJSON CustomRequestHandlingProperty {..}
    = JSON.object ["InsertHeaders" JSON..= insertHeaders]
instance Property "InsertHeaders" CustomRequestHandlingProperty where
  type PropertyType "InsertHeaders" CustomRequestHandlingProperty = [CustomHTTPHeaderProperty]
  set newValue CustomRequestHandlingProperty {}
    = CustomRequestHandlingProperty {insertHeaders = newValue, ..}