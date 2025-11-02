module Stratosphere.Kendra.DataSource.DocumentAttributeConditionProperty (
        module Exports, DocumentAttributeConditionProperty(..),
        mkDocumentAttributeConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DocumentAttributeValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentAttributeConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributecondition.html>
    DocumentAttributeConditionProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributecondition.html#cfn-kendra-datasource-documentattributecondition-conditiondocumentattributekey>
                                        conditionDocumentAttributeKey :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributecondition.html#cfn-kendra-datasource-documentattributecondition-conditiononvalue>
                                        conditionOnValue :: (Prelude.Maybe DocumentAttributeValueProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributecondition.html#cfn-kendra-datasource-documentattributecondition-operator>
                                        operator :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentAttributeConditionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DocumentAttributeConditionProperty
mkDocumentAttributeConditionProperty
  conditionDocumentAttributeKey
  operator
  = DocumentAttributeConditionProperty
      {haddock_workaround_ = (),
       conditionDocumentAttributeKey = conditionDocumentAttributeKey,
       operator = operator, conditionOnValue = Prelude.Nothing}
instance ToResourceProperties DocumentAttributeConditionProperty where
  toResourceProperties DocumentAttributeConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.DocumentAttributeCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConditionDocumentAttributeKey"
                              JSON..= conditionDocumentAttributeKey,
                            "Operator" JSON..= operator]
                           (Prelude.catMaybes
                              [(JSON..=) "ConditionOnValue" Prelude.<$> conditionOnValue]))}
instance JSON.ToJSON DocumentAttributeConditionProperty where
  toJSON DocumentAttributeConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConditionDocumentAttributeKey"
                 JSON..= conditionDocumentAttributeKey,
               "Operator" JSON..= operator]
              (Prelude.catMaybes
                 [(JSON..=) "ConditionOnValue" Prelude.<$> conditionOnValue])))
instance Property "ConditionDocumentAttributeKey" DocumentAttributeConditionProperty where
  type PropertyType "ConditionDocumentAttributeKey" DocumentAttributeConditionProperty = Value Prelude.Text
  set newValue DocumentAttributeConditionProperty {..}
    = DocumentAttributeConditionProperty
        {conditionDocumentAttributeKey = newValue, ..}
instance Property "ConditionOnValue" DocumentAttributeConditionProperty where
  type PropertyType "ConditionOnValue" DocumentAttributeConditionProperty = DocumentAttributeValueProperty
  set newValue DocumentAttributeConditionProperty {..}
    = DocumentAttributeConditionProperty
        {conditionOnValue = Prelude.pure newValue, ..}
instance Property "Operator" DocumentAttributeConditionProperty where
  type PropertyType "Operator" DocumentAttributeConditionProperty = Value Prelude.Text
  set newValue DocumentAttributeConditionProperty {..}
    = DocumentAttributeConditionProperty {operator = newValue, ..}