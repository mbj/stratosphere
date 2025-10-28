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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-documentdbeventsourceconfig.html>
    DocumentDBEventSourceConfigProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-documentdbeventsourceconfig.html#cfn-lambda-eventsourcemapping-documentdbeventsourceconfig-collectionname>
                                         collectionName :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-documentdbeventsourceconfig.html#cfn-lambda-eventsourcemapping-documentdbeventsourceconfig-databasename>
                                         databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-documentdbeventsourceconfig.html#cfn-lambda-eventsourcemapping-documentdbeventsourceconfig-fulldocument>
                                         fullDocument :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentDBEventSourceConfigProperty ::
  DocumentDBEventSourceConfigProperty
mkDocumentDBEventSourceConfigProperty
  = DocumentDBEventSourceConfigProperty
      {haddock_workaround_ = (), collectionName = Prelude.Nothing,
       databaseName = Prelude.Nothing, fullDocument = Prelude.Nothing}
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