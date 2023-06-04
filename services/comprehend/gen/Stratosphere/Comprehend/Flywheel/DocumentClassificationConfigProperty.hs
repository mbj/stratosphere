module Stratosphere.Comprehend.Flywheel.DocumentClassificationConfigProperty (
        DocumentClassificationConfigProperty(..),
        mkDocumentClassificationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentClassificationConfigProperty
  = DocumentClassificationConfigProperty {labels :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          mode :: (Value Prelude.Text)}
mkDocumentClassificationConfigProperty ::
  Value Prelude.Text -> DocumentClassificationConfigProperty
mkDocumentClassificationConfigProperty mode
  = DocumentClassificationConfigProperty
      {mode = mode, labels = Prelude.Nothing}
instance ToResourceProperties DocumentClassificationConfigProperty where
  toResourceProperties DocumentClassificationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Comprehend::Flywheel.DocumentClassificationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Mode" JSON..= mode]
                           (Prelude.catMaybes [(JSON..=) "Labels" Prelude.<$> labels]))}
instance JSON.ToJSON DocumentClassificationConfigProperty where
  toJSON DocumentClassificationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Mode" JSON..= mode]
              (Prelude.catMaybes [(JSON..=) "Labels" Prelude.<$> labels])))
instance Property "Labels" DocumentClassificationConfigProperty where
  type PropertyType "Labels" DocumentClassificationConfigProperty = ValueList Prelude.Text
  set newValue DocumentClassificationConfigProperty {..}
    = DocumentClassificationConfigProperty
        {labels = Prelude.pure newValue, ..}
instance Property "Mode" DocumentClassificationConfigProperty where
  type PropertyType "Mode" DocumentClassificationConfigProperty = Value Prelude.Text
  set newValue DocumentClassificationConfigProperty {..}
    = DocumentClassificationConfigProperty {mode = newValue, ..}