module Stratosphere.ApiGateway.DocumentationPart (
        module Exports, DocumentationPart(..), mkDocumentationPart
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGateway.DocumentationPart.LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentationPart
  = DocumentationPart {location :: LocationProperty,
                       properties :: (Value Prelude.Text),
                       restApiId :: (Value Prelude.Text)}
mkDocumentationPart ::
  LocationProperty
  -> Value Prelude.Text -> Value Prelude.Text -> DocumentationPart
mkDocumentationPart location properties restApiId
  = DocumentationPart
      {location = location, properties = properties,
       restApiId = restApiId}
instance ToResourceProperties DocumentationPart where
  toResourceProperties DocumentationPart {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::DocumentationPart",
         properties = ["Location" JSON..= location,
                       "Properties" JSON..= properties, "RestApiId" JSON..= restApiId]}
instance JSON.ToJSON DocumentationPart where
  toJSON DocumentationPart {..}
    = JSON.object
        ["Location" JSON..= location, "Properties" JSON..= properties,
         "RestApiId" JSON..= restApiId]
instance Property "Location" DocumentationPart where
  type PropertyType "Location" DocumentationPart = LocationProperty
  set newValue DocumentationPart {..}
    = DocumentationPart {location = newValue, ..}
instance Property "Properties" DocumentationPart where
  type PropertyType "Properties" DocumentationPart = Value Prelude.Text
  set newValue DocumentationPart {..}
    = DocumentationPart {properties = newValue, ..}
instance Property "RestApiId" DocumentationPart where
  type PropertyType "RestApiId" DocumentationPart = Value Prelude.Text
  set newValue DocumentationPart {..}
    = DocumentationPart {restApiId = newValue, ..}