module Stratosphere.QuickSight.Template.DataPathValueProperty (
        module Exports, DataPathValueProperty(..), mkDataPathValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DataPathTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataPathValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datapathvalue.html>
    DataPathValueProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datapathvalue.html#cfn-quicksight-template-datapathvalue-datapathtype>
                           dataPathType :: (Prelude.Maybe DataPathTypeProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datapathvalue.html#cfn-quicksight-template-datapathvalue-fieldid>
                           fieldId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datapathvalue.html#cfn-quicksight-template-datapathvalue-fieldvalue>
                           fieldValue :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataPathValueProperty :: DataPathValueProperty
mkDataPathValueProperty
  = DataPathValueProperty
      {haddock_workaround_ = (), dataPathType = Prelude.Nothing,
       fieldId = Prelude.Nothing, fieldValue = Prelude.Nothing}
instance ToResourceProperties DataPathValueProperty where
  toResourceProperties DataPathValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DataPathValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataPathType" Prelude.<$> dataPathType,
                            (JSON..=) "FieldId" Prelude.<$> fieldId,
                            (JSON..=) "FieldValue" Prelude.<$> fieldValue])}
instance JSON.ToJSON DataPathValueProperty where
  toJSON DataPathValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataPathType" Prelude.<$> dataPathType,
               (JSON..=) "FieldId" Prelude.<$> fieldId,
               (JSON..=) "FieldValue" Prelude.<$> fieldValue]))
instance Property "DataPathType" DataPathValueProperty where
  type PropertyType "DataPathType" DataPathValueProperty = DataPathTypeProperty
  set newValue DataPathValueProperty {..}
    = DataPathValueProperty {dataPathType = Prelude.pure newValue, ..}
instance Property "FieldId" DataPathValueProperty where
  type PropertyType "FieldId" DataPathValueProperty = Value Prelude.Text
  set newValue DataPathValueProperty {..}
    = DataPathValueProperty {fieldId = Prelude.pure newValue, ..}
instance Property "FieldValue" DataPathValueProperty where
  type PropertyType "FieldValue" DataPathValueProperty = Value Prelude.Text
  set newValue DataPathValueProperty {..}
    = DataPathValueProperty {fieldValue = Prelude.pure newValue, ..}