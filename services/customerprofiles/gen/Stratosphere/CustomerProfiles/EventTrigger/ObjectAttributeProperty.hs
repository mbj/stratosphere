module Stratosphere.CustomerProfiles.EventTrigger.ObjectAttributeProperty (
        ObjectAttributeProperty(..), mkObjectAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObjectAttributeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-objectattribute.html>
    ObjectAttributeProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-objectattribute.html#cfn-customerprofiles-eventtrigger-objectattribute-comparisonoperator>
                             comparisonOperator :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-objectattribute.html#cfn-customerprofiles-eventtrigger-objectattribute-fieldname>
                             fieldName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-objectattribute.html#cfn-customerprofiles-eventtrigger-objectattribute-source>
                             source :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-objectattribute.html#cfn-customerprofiles-eventtrigger-objectattribute-values>
                             values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkObjectAttributeProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> ObjectAttributeProperty
mkObjectAttributeProperty comparisonOperator values
  = ObjectAttributeProperty
      {haddock_workaround_ = (), comparisonOperator = comparisonOperator,
       values = values, fieldName = Prelude.Nothing,
       source = Prelude.Nothing}
instance ToResourceProperties ObjectAttributeProperty where
  toResourceProperties ObjectAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::EventTrigger.ObjectAttribute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComparisonOperator" JSON..= comparisonOperator,
                            "Values" JSON..= values]
                           (Prelude.catMaybes
                              [(JSON..=) "FieldName" Prelude.<$> fieldName,
                               (JSON..=) "Source" Prelude.<$> source]))}
instance JSON.ToJSON ObjectAttributeProperty where
  toJSON ObjectAttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComparisonOperator" JSON..= comparisonOperator,
               "Values" JSON..= values]
              (Prelude.catMaybes
                 [(JSON..=) "FieldName" Prelude.<$> fieldName,
                  (JSON..=) "Source" Prelude.<$> source])))
instance Property "ComparisonOperator" ObjectAttributeProperty where
  type PropertyType "ComparisonOperator" ObjectAttributeProperty = Value Prelude.Text
  set newValue ObjectAttributeProperty {..}
    = ObjectAttributeProperty {comparisonOperator = newValue, ..}
instance Property "FieldName" ObjectAttributeProperty where
  type PropertyType "FieldName" ObjectAttributeProperty = Value Prelude.Text
  set newValue ObjectAttributeProperty {..}
    = ObjectAttributeProperty {fieldName = Prelude.pure newValue, ..}
instance Property "Source" ObjectAttributeProperty where
  type PropertyType "Source" ObjectAttributeProperty = Value Prelude.Text
  set newValue ObjectAttributeProperty {..}
    = ObjectAttributeProperty {source = Prelude.pure newValue, ..}
instance Property "Values" ObjectAttributeProperty where
  type PropertyType "Values" ObjectAttributeProperty = ValueList Prelude.Text
  set newValue ObjectAttributeProperty {..}
    = ObjectAttributeProperty {values = newValue, ..}