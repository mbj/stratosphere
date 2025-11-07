module Stratosphere.QBusiness.DataAccessor.DocumentAttributeValueProperty (
        DocumentAttributeValueProperty(..),
        mkDocumentAttributeValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentAttributeValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-documentattributevalue.html>
    DocumentAttributeValueProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-documentattributevalue.html#cfn-qbusiness-dataaccessor-documentattributevalue-datevalue>
                                    dateValue :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-documentattributevalue.html#cfn-qbusiness-dataaccessor-documentattributevalue-longvalue>
                                    longValue :: (Prelude.Maybe (Value Prelude.Double)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-documentattributevalue.html#cfn-qbusiness-dataaccessor-documentattributevalue-stringlistvalue>
                                    stringListValue :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-documentattributevalue.html#cfn-qbusiness-dataaccessor-documentattributevalue-stringvalue>
                                    stringValue :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentAttributeValueProperty :: DocumentAttributeValueProperty
mkDocumentAttributeValueProperty
  = DocumentAttributeValueProperty
      {haddock_workaround_ = (), dateValue = Prelude.Nothing,
       longValue = Prelude.Nothing, stringListValue = Prelude.Nothing,
       stringValue = Prelude.Nothing}
instance ToResourceProperties DocumentAttributeValueProperty where
  toResourceProperties DocumentAttributeValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataAccessor.DocumentAttributeValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateValue" Prelude.<$> dateValue,
                            (JSON..=) "LongValue" Prelude.<$> longValue,
                            (JSON..=) "StringListValue" Prelude.<$> stringListValue,
                            (JSON..=) "StringValue" Prelude.<$> stringValue])}
instance JSON.ToJSON DocumentAttributeValueProperty where
  toJSON DocumentAttributeValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateValue" Prelude.<$> dateValue,
               (JSON..=) "LongValue" Prelude.<$> longValue,
               (JSON..=) "StringListValue" Prelude.<$> stringListValue,
               (JSON..=) "StringValue" Prelude.<$> stringValue]))
instance Property "DateValue" DocumentAttributeValueProperty where
  type PropertyType "DateValue" DocumentAttributeValueProperty = Value Prelude.Text
  set newValue DocumentAttributeValueProperty {..}
    = DocumentAttributeValueProperty
        {dateValue = Prelude.pure newValue, ..}
instance Property "LongValue" DocumentAttributeValueProperty where
  type PropertyType "LongValue" DocumentAttributeValueProperty = Value Prelude.Double
  set newValue DocumentAttributeValueProperty {..}
    = DocumentAttributeValueProperty
        {longValue = Prelude.pure newValue, ..}
instance Property "StringListValue" DocumentAttributeValueProperty where
  type PropertyType "StringListValue" DocumentAttributeValueProperty = ValueList Prelude.Text
  set newValue DocumentAttributeValueProperty {..}
    = DocumentAttributeValueProperty
        {stringListValue = Prelude.pure newValue, ..}
instance Property "StringValue" DocumentAttributeValueProperty where
  type PropertyType "StringValue" DocumentAttributeValueProperty = Value Prelude.Text
  set newValue DocumentAttributeValueProperty {..}
    = DocumentAttributeValueProperty
        {stringValue = Prelude.pure newValue, ..}