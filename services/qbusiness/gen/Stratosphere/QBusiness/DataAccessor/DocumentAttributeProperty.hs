module Stratosphere.QBusiness.DataAccessor.DocumentAttributeProperty (
        module Exports, DocumentAttributeProperty(..),
        mkDocumentAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.DataAccessor.DocumentAttributeValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentAttributeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-documentattribute.html>
    DocumentAttributeProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-documentattribute.html#cfn-qbusiness-dataaccessor-documentattribute-name>
                               name :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-documentattribute.html#cfn-qbusiness-dataaccessor-documentattribute-value>
                               value :: DocumentAttributeValueProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentAttributeProperty ::
  Value Prelude.Text
  -> DocumentAttributeValueProperty -> DocumentAttributeProperty
mkDocumentAttributeProperty name value
  = DocumentAttributeProperty
      {haddock_workaround_ = (), name = name, value = value}
instance ToResourceProperties DocumentAttributeProperty where
  toResourceProperties DocumentAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataAccessor.DocumentAttribute",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON DocumentAttributeProperty where
  toJSON DocumentAttributeProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" DocumentAttributeProperty where
  type PropertyType "Name" DocumentAttributeProperty = Value Prelude.Text
  set newValue DocumentAttributeProperty {..}
    = DocumentAttributeProperty {name = newValue, ..}
instance Property "Value" DocumentAttributeProperty where
  type PropertyType "Value" DocumentAttributeProperty = DocumentAttributeValueProperty
  set newValue DocumentAttributeProperty {..}
    = DocumentAttributeProperty {value = newValue, ..}