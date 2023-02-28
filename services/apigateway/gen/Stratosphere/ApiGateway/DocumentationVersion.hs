module Stratosphere.ApiGateway.DocumentationVersion (
        DocumentationVersion(..), mkDocumentationVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentationVersion
  = DocumentationVersion {description :: (Prelude.Maybe (Value Prelude.Text)),
                          documentationVersion :: (Value Prelude.Text),
                          restApiId :: (Value Prelude.Text)}
mkDocumentationVersion ::
  Value Prelude.Text -> Value Prelude.Text -> DocumentationVersion
mkDocumentationVersion documentationVersion restApiId
  = DocumentationVersion
      {documentationVersion = documentationVersion,
       restApiId = restApiId, description = Prelude.Nothing}
instance ToResourceProperties DocumentationVersion where
  toResourceProperties DocumentationVersion {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::DocumentationVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DocumentationVersion" JSON..= documentationVersion,
                            "RestApiId" JSON..= restApiId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON DocumentationVersion where
  toJSON DocumentationVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DocumentationVersion" JSON..= documentationVersion,
               "RestApiId" JSON..= restApiId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" DocumentationVersion where
  type PropertyType "Description" DocumentationVersion = Value Prelude.Text
  set newValue DocumentationVersion {..}
    = DocumentationVersion {description = Prelude.pure newValue, ..}
instance Property "DocumentationVersion" DocumentationVersion where
  type PropertyType "DocumentationVersion" DocumentationVersion = Value Prelude.Text
  set newValue DocumentationVersion {..}
    = DocumentationVersion {documentationVersion = newValue, ..}
instance Property "RestApiId" DocumentationVersion where
  type PropertyType "RestApiId" DocumentationVersion = Value Prelude.Text
  set newValue DocumentationVersion {..}
    = DocumentationVersion {restApiId = newValue, ..}