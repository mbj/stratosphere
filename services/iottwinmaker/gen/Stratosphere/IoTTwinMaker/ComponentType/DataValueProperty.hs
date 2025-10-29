module Stratosphere.IoTTwinMaker.ComponentType.DataValueProperty (
        module Exports, DataValueProperty(..), mkDataValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.RelationshipValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataValueProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-datavalue.html>
    DataValueProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-datavalue.html#cfn-iottwinmaker-componenttype-datavalue-booleanvalue>
                       booleanValue :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-datavalue.html#cfn-iottwinmaker-componenttype-datavalue-doublevalue>
                       doubleValue :: (Prelude.Maybe (Value Prelude.Double)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-datavalue.html#cfn-iottwinmaker-componenttype-datavalue-expression>
                       expression :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-datavalue.html#cfn-iottwinmaker-componenttype-datavalue-integervalue>
                       integerValue :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-datavalue.html#cfn-iottwinmaker-componenttype-datavalue-listvalue>
                       listValue :: (Prelude.Maybe [DataValueProperty]),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-datavalue.html#cfn-iottwinmaker-componenttype-datavalue-longvalue>
                       longValue :: (Prelude.Maybe (Value Prelude.Double)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-datavalue.html#cfn-iottwinmaker-componenttype-datavalue-mapvalue>
                       mapValue :: (Prelude.Maybe (Prelude.Map Prelude.Text DataValueProperty)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-datavalue.html#cfn-iottwinmaker-componenttype-datavalue-relationshipvalue>
                       relationshipValue :: (Prelude.Maybe RelationshipValueProperty),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-datavalue.html#cfn-iottwinmaker-componenttype-datavalue-stringvalue>
                       stringValue :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataValueProperty :: DataValueProperty
mkDataValueProperty
  = DataValueProperty
      {booleanValue = Prelude.Nothing, doubleValue = Prelude.Nothing,
       expression = Prelude.Nothing, integerValue = Prelude.Nothing,
       listValue = Prelude.Nothing, longValue = Prelude.Nothing,
       mapValue = Prelude.Nothing, relationshipValue = Prelude.Nothing,
       stringValue = Prelude.Nothing}
instance ToResourceProperties DataValueProperty where
  toResourceProperties DataValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::ComponentType.DataValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BooleanValue" Prelude.<$> booleanValue,
                            (JSON..=) "DoubleValue" Prelude.<$> doubleValue,
                            (JSON..=) "Expression" Prelude.<$> expression,
                            (JSON..=) "IntegerValue" Prelude.<$> integerValue,
                            (JSON..=) "ListValue" Prelude.<$> listValue,
                            (JSON..=) "LongValue" Prelude.<$> longValue,
                            (JSON..=) "MapValue" Prelude.<$> mapValue,
                            (JSON..=) "RelationshipValue" Prelude.<$> relationshipValue,
                            (JSON..=) "StringValue" Prelude.<$> stringValue])}
instance JSON.ToJSON DataValueProperty where
  toJSON DataValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BooleanValue" Prelude.<$> booleanValue,
               (JSON..=) "DoubleValue" Prelude.<$> doubleValue,
               (JSON..=) "Expression" Prelude.<$> expression,
               (JSON..=) "IntegerValue" Prelude.<$> integerValue,
               (JSON..=) "ListValue" Prelude.<$> listValue,
               (JSON..=) "LongValue" Prelude.<$> longValue,
               (JSON..=) "MapValue" Prelude.<$> mapValue,
               (JSON..=) "RelationshipValue" Prelude.<$> relationshipValue,
               (JSON..=) "StringValue" Prelude.<$> stringValue]))
instance Property "BooleanValue" DataValueProperty where
  type PropertyType "BooleanValue" DataValueProperty = Value Prelude.Bool
  set newValue DataValueProperty {..}
    = DataValueProperty {booleanValue = Prelude.pure newValue, ..}
instance Property "DoubleValue" DataValueProperty where
  type PropertyType "DoubleValue" DataValueProperty = Value Prelude.Double
  set newValue DataValueProperty {..}
    = DataValueProperty {doubleValue = Prelude.pure newValue, ..}
instance Property "Expression" DataValueProperty where
  type PropertyType "Expression" DataValueProperty = Value Prelude.Text
  set newValue DataValueProperty {..}
    = DataValueProperty {expression = Prelude.pure newValue, ..}
instance Property "IntegerValue" DataValueProperty where
  type PropertyType "IntegerValue" DataValueProperty = Value Prelude.Integer
  set newValue DataValueProperty {..}
    = DataValueProperty {integerValue = Prelude.pure newValue, ..}
instance Property "ListValue" DataValueProperty where
  type PropertyType "ListValue" DataValueProperty = [DataValueProperty]
  set newValue DataValueProperty {..}
    = DataValueProperty {listValue = Prelude.pure newValue, ..}
instance Property "LongValue" DataValueProperty where
  type PropertyType "LongValue" DataValueProperty = Value Prelude.Double
  set newValue DataValueProperty {..}
    = DataValueProperty {longValue = Prelude.pure newValue, ..}
instance Property "MapValue" DataValueProperty where
  type PropertyType "MapValue" DataValueProperty = Prelude.Map Prelude.Text DataValueProperty
  set newValue DataValueProperty {..}
    = DataValueProperty {mapValue = Prelude.pure newValue, ..}
instance Property "RelationshipValue" DataValueProperty where
  type PropertyType "RelationshipValue" DataValueProperty = RelationshipValueProperty
  set newValue DataValueProperty {..}
    = DataValueProperty {relationshipValue = Prelude.pure newValue, ..}
instance Property "StringValue" DataValueProperty where
  type PropertyType "StringValue" DataValueProperty = Value Prelude.Text
  set newValue DataValueProperty {..}
    = DataValueProperty {stringValue = Prelude.pure newValue, ..}