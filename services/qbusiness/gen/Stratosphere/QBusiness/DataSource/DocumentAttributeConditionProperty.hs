module Stratosphere.QBusiness.DataSource.DocumentAttributeConditionProperty (
        module Exports, DocumentAttributeConditionProperty(..),
        mkDocumentAttributeConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.DataSource.DocumentAttributeValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentAttributeConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-documentattributecondition.html>
    DocumentAttributeConditionProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-documentattributecondition.html#cfn-qbusiness-datasource-documentattributecondition-key>
                                        key :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-documentattributecondition.html#cfn-qbusiness-datasource-documentattributecondition-operator>
                                        operator :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-documentattributecondition.html#cfn-qbusiness-datasource-documentattributecondition-value>
                                        value :: (Prelude.Maybe DocumentAttributeValueProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentAttributeConditionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DocumentAttributeConditionProperty
mkDocumentAttributeConditionProperty key operator
  = DocumentAttributeConditionProperty
      {haddock_workaround_ = (), key = key, operator = operator,
       value = Prelude.Nothing}
instance ToResourceProperties DocumentAttributeConditionProperty where
  toResourceProperties DocumentAttributeConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataSource.DocumentAttributeCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key, "Operator" JSON..= operator]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON DocumentAttributeConditionProperty where
  toJSON DocumentAttributeConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key, "Operator" JSON..= operator]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Key" DocumentAttributeConditionProperty where
  type PropertyType "Key" DocumentAttributeConditionProperty = Value Prelude.Text
  set newValue DocumentAttributeConditionProperty {..}
    = DocumentAttributeConditionProperty {key = newValue, ..}
instance Property "Operator" DocumentAttributeConditionProperty where
  type PropertyType "Operator" DocumentAttributeConditionProperty = Value Prelude.Text
  set newValue DocumentAttributeConditionProperty {..}
    = DocumentAttributeConditionProperty {operator = newValue, ..}
instance Property "Value" DocumentAttributeConditionProperty where
  type PropertyType "Value" DocumentAttributeConditionProperty = DocumentAttributeValueProperty
  set newValue DocumentAttributeConditionProperty {..}
    = DocumentAttributeConditionProperty
        {value = Prelude.pure newValue, ..}