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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributetarget.html>
    DocumentAttributeTargetProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributetarget.html#cfn-kendra-datasource-documentattributetarget-targetdocumentattributekey>
                                     targetDocumentAttributeKey :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributetarget.html#cfn-kendra-datasource-documentattributetarget-targetdocumentattributevalue>
                                     targetDocumentAttributeValue :: (Prelude.Maybe DocumentAttributeValueProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributetarget.html#cfn-kendra-datasource-documentattributetarget-targetdocumentattributevaluedeletion>
                                     targetDocumentAttributeValueDeletion :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentAttributeTargetProperty ::
  Value Prelude.Text -> DocumentAttributeTargetProperty
mkDocumentAttributeTargetProperty targetDocumentAttributeKey
  = DocumentAttributeTargetProperty
      {haddock_workaround_ = (),
       targetDocumentAttributeKey = targetDocumentAttributeKey,
       targetDocumentAttributeValue = Prelude.Nothing,
       targetDocumentAttributeValueDeletion = Prelude.Nothing}
instance ToResourceProperties DocumentAttributeTargetProperty where
  toResourceProperties DocumentAttributeTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.DocumentAttributeTarget",
         supportsTags = Prelude.False,
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