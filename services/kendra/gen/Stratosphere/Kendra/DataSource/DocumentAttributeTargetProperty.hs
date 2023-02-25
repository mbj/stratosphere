module Stratosphere.Kendra.DataSource.DocumentAttributeTargetProperty (
        module Exports, DocumentAttributeTargetProperty(..),
        mkDocumentAttributeTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DocumentAttributeValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentAttributeTargetProperty
  = DocumentAttributeTargetProperty {targetDocumentAttributeKey :: (Value Prelude.Text),
                                     targetDocumentAttributeValue :: (Prelude.Maybe DocumentAttributeValueProperty),
                                     targetDocumentAttributeValueDeletion :: (Prelude.Maybe (Value Prelude.Bool))}
mkDocumentAttributeTargetProperty ::
  Value Prelude.Text -> DocumentAttributeTargetProperty
mkDocumentAttributeTargetProperty targetDocumentAttributeKey
  = DocumentAttributeTargetProperty
      {targetDocumentAttributeKey = targetDocumentAttributeKey,
       targetDocumentAttributeValue = Prelude.Nothing,
       targetDocumentAttributeValueDeletion = Prelude.Nothing}
instance ToResourceProperties DocumentAttributeTargetProperty where
  toResourceProperties DocumentAttributeTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.DocumentAttributeTarget",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetDocumentAttributeKey" JSON..= targetDocumentAttributeKey]
                           (Prelude.catMaybes
                              [(JSON..=) "TargetDocumentAttributeValue"
                                 Prelude.<$> targetDocumentAttributeValue,
                               (JSON..=) "TargetDocumentAttributeValueDeletion"
                                 Prelude.<$> targetDocumentAttributeValueDeletion]))}
instance JSON.ToJSON DocumentAttributeTargetProperty where
  toJSON DocumentAttributeTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetDocumentAttributeKey" JSON..= targetDocumentAttributeKey]
              (Prelude.catMaybes
                 [(JSON..=) "TargetDocumentAttributeValue"
                    Prelude.<$> targetDocumentAttributeValue,
                  (JSON..=) "TargetDocumentAttributeValueDeletion"
                    Prelude.<$> targetDocumentAttributeValueDeletion])))
instance Property "TargetDocumentAttributeKey" DocumentAttributeTargetProperty where
  type PropertyType "TargetDocumentAttributeKey" DocumentAttributeTargetProperty = Value Prelude.Text
  set newValue DocumentAttributeTargetProperty {..}
    = DocumentAttributeTargetProperty
        {targetDocumentAttributeKey = newValue, ..}
instance Property "TargetDocumentAttributeValue" DocumentAttributeTargetProperty where
  type PropertyType "TargetDocumentAttributeValue" DocumentAttributeTargetProperty = DocumentAttributeValueProperty
  set newValue DocumentAttributeTargetProperty {..}
    = DocumentAttributeTargetProperty
        {targetDocumentAttributeValue = Prelude.pure newValue, ..}
instance Property "TargetDocumentAttributeValueDeletion" DocumentAttributeTargetProperty where
  type PropertyType "TargetDocumentAttributeValueDeletion" DocumentAttributeTargetProperty = Value Prelude.Bool
  set newValue DocumentAttributeTargetProperty {..}
    = DocumentAttributeTargetProperty
        {targetDocumentAttributeValueDeletion = Prelude.pure newValue, ..}