module Stratosphere.Lambda.EventSourceMapping.DocumentDBEventSourceConfigProperty (
        DocumentDBEventSourceConfigProperty(..),
        mkDocumentDBEventSourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentDBEventSourceConfigProperty
  = DocumentDBEventSourceConfigProperty {collectionName :: (Prelude.Maybe (Value Prelude.Text)),
                                         databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                         fullDocument :: (Prelude.Maybe (Value Prelude.Text))}
mkDocumentDBEventSourceConfigProperty ::
  DocumentDBEventSourceConfigProperty
mkDocumentDBEventSourceConfigProperty
  = DocumentDBEventSourceConfigProperty
      {collectionName = Prelude.Nothing, databaseName = Prelude.Nothing,
       fullDocument = Prelude.Nothing}
instance ToResourceProperties DocumentDBEventSourceConfigProperty where
  toResourceProperties DocumentDBEventSourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.DocumentDBEventSourceConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CollectionName" Prelude.<$> collectionName,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "FullDocument" Prelude.<$> fullDocument])}
instance JSON.ToJSON DocumentDBEventSourceConfigProperty where
  toJSON DocumentDBEventSourceConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CollectionName" Prelude.<$> collectionName,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "FullDocument" Prelude.<$> fullDocument]))
instance Property "CollectionName" DocumentDBEventSourceConfigProperty where
  type PropertyType "CollectionName" DocumentDBEventSourceConfigProperty = Value Prelude.Text
  set newValue DocumentDBEventSourceConfigProperty {..}
    = DocumentDBEventSourceConfigProperty
        {collectionName = Prelude.pure newValue, ..}
instance Property "DatabaseName" DocumentDBEventSourceConfigProperty where
  type PropertyType "DatabaseName" DocumentDBEventSourceConfigProperty = Value Prelude.Text
  set newValue DocumentDBEventSourceConfigProperty {..}
    = DocumentDBEventSourceConfigProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "FullDocument" DocumentDBEventSourceConfigProperty where
  type PropertyType "FullDocument" DocumentDBEventSourceConfigProperty = Value Prelude.Text
  set newValue DocumentDBEventSourceConfigProperty {..}
    = DocumentDBEventSourceConfigProperty
        {fullDocument = Prelude.pure newValue, ..}