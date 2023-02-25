module Stratosphere.WAFv2.LoggingConfiguration.FieldToMatchProperty (
        module Exports, FieldToMatchProperty(..), mkFieldToMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.LoggingConfiguration.JsonBodyProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.LoggingConfiguration.SingleHeaderProperty as Exports
import Stratosphere.ResourceProperties
data FieldToMatchProperty
  = FieldToMatchProperty {jsonBody :: (Prelude.Maybe JsonBodyProperty),
                          method :: (Prelude.Maybe JSON.Object),
                          queryString :: (Prelude.Maybe JSON.Object),
                          singleHeader :: (Prelude.Maybe SingleHeaderProperty),
                          uriPath :: (Prelude.Maybe JSON.Object)}
mkFieldToMatchProperty :: FieldToMatchProperty
mkFieldToMatchProperty
  = FieldToMatchProperty
      {jsonBody = Prelude.Nothing, method = Prelude.Nothing,
       queryString = Prelude.Nothing, singleHeader = Prelude.Nothing,
       uriPath = Prelude.Nothing}
instance ToResourceProperties FieldToMatchProperty where
  toResourceProperties FieldToMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::LoggingConfiguration.FieldToMatch",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "JsonBody" Prelude.<$> jsonBody,
                            (JSON..=) "Method" Prelude.<$> method,
                            (JSON..=) "QueryString" Prelude.<$> queryString,
                            (JSON..=) "SingleHeader" Prelude.<$> singleHeader,
                            (JSON..=) "UriPath" Prelude.<$> uriPath])}
instance JSON.ToJSON FieldToMatchProperty where
  toJSON FieldToMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "JsonBody" Prelude.<$> jsonBody,
               (JSON..=) "Method" Prelude.<$> method,
               (JSON..=) "QueryString" Prelude.<$> queryString,
               (JSON..=) "SingleHeader" Prelude.<$> singleHeader,
               (JSON..=) "UriPath" Prelude.<$> uriPath]))
instance Property "JsonBody" FieldToMatchProperty where
  type PropertyType "JsonBody" FieldToMatchProperty = JsonBodyProperty
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {jsonBody = Prelude.pure newValue, ..}
instance Property "Method" FieldToMatchProperty where
  type PropertyType "Method" FieldToMatchProperty = JSON.Object
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {method = Prelude.pure newValue, ..}
instance Property "QueryString" FieldToMatchProperty where
  type PropertyType "QueryString" FieldToMatchProperty = JSON.Object
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {queryString = Prelude.pure newValue, ..}
instance Property "SingleHeader" FieldToMatchProperty where
  type PropertyType "SingleHeader" FieldToMatchProperty = SingleHeaderProperty
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {singleHeader = Prelude.pure newValue, ..}
instance Property "UriPath" FieldToMatchProperty where
  type PropertyType "UriPath" FieldToMatchProperty = JSON.Object
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {uriPath = Prelude.pure newValue, ..}