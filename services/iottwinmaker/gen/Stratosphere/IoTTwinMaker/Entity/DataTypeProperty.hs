module Stratosphere.IoTTwinMaker.Entity.DataTypeProperty (
        module Exports, DataTypeProperty(..), mkDataTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.DataValueProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.RelationshipProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-datatype.html>
    DataTypeProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-datatype.html#cfn-iottwinmaker-entity-datatype-allowedvalues>
                      allowedValues :: (Prelude.Maybe [DataValueProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-datatype.html#cfn-iottwinmaker-entity-datatype-nestedtype>
                      nestedType :: (Prelude.Maybe DataTypeProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-datatype.html#cfn-iottwinmaker-entity-datatype-relationship>
                      relationship :: (Prelude.Maybe RelationshipProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-datatype.html#cfn-iottwinmaker-entity-datatype-type>
                      type' :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-datatype.html#cfn-iottwinmaker-entity-datatype-unitofmeasure>
                      unitOfMeasure :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataTypeProperty :: DataTypeProperty
mkDataTypeProperty
  = DataTypeProperty
      {haddock_workaround_ = (), allowedValues = Prelude.Nothing,
       nestedType = Prelude.Nothing, relationship = Prelude.Nothing,
       type' = Prelude.Nothing, unitOfMeasure = Prelude.Nothing}
instance ToResourceProperties DataTypeProperty where
  toResourceProperties DataTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Entity.DataType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowedValues" Prelude.<$> allowedValues,
                            (JSON..=) "NestedType" Prelude.<$> nestedType,
                            (JSON..=) "Relationship" Prelude.<$> relationship,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "UnitOfMeasure" Prelude.<$> unitOfMeasure])}
instance JSON.ToJSON DataTypeProperty where
  toJSON DataTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowedValues" Prelude.<$> allowedValues,
               (JSON..=) "NestedType" Prelude.<$> nestedType,
               (JSON..=) "Relationship" Prelude.<$> relationship,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "UnitOfMeasure" Prelude.<$> unitOfMeasure]))
instance Property "AllowedValues" DataTypeProperty where
  type PropertyType "AllowedValues" DataTypeProperty = [DataValueProperty]
  set newValue DataTypeProperty {..}
    = DataTypeProperty {allowedValues = Prelude.pure newValue, ..}
instance Property "NestedType" DataTypeProperty where
  type PropertyType "NestedType" DataTypeProperty = DataTypeProperty
  set newValue DataTypeProperty {..}
    = DataTypeProperty {nestedType = Prelude.pure newValue, ..}
instance Property "Relationship" DataTypeProperty where
  type PropertyType "Relationship" DataTypeProperty = RelationshipProperty
  set newValue DataTypeProperty {..}
    = DataTypeProperty {relationship = Prelude.pure newValue, ..}
instance Property "Type" DataTypeProperty where
  type PropertyType "Type" DataTypeProperty = Value Prelude.Text
  set newValue DataTypeProperty {..}
    = DataTypeProperty {type' = Prelude.pure newValue, ..}
instance Property "UnitOfMeasure" DataTypeProperty where
  type PropertyType "UnitOfMeasure" DataTypeProperty = Value Prelude.Text
  set newValue DataTypeProperty {..}
    = DataTypeProperty {unitOfMeasure = Prelude.pure newValue, ..}