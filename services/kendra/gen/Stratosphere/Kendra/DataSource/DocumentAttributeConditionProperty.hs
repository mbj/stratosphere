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
  = DocumentAttributeConditionProperty {conditionDocumentAttributeKey :: (Value Prelude.Text),
                                        conditionOnValue :: (Prelude.Maybe DocumentAttributeValueProperty),
                                        operator :: (Value Prelude.Text)}
mkDocumentAttributeConditionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DocumentAttributeConditionProperty
mkDocumentAttributeConditionProperty
  conditionDocumentAttributeKey
  operator
  = DocumentAttributeConditionProperty
      {conditionDocumentAttributeKey = conditionDocumentAttributeKey,
       operator = operator, conditionOnValue = Prelude.Nothing}
instance ToResourceProperties DocumentAttributeConditionProperty where
  toResourceProperties DocumentAttributeConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.DocumentAttributeCondition",
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