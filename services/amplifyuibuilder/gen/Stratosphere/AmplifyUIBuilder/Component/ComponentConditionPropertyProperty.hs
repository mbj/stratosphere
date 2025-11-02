module Stratosphere.AmplifyUIBuilder.Component.ComponentConditionPropertyProperty (
        module Exports, ComponentConditionPropertyProperty(..),
        mkComponentConditionPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentPropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentConditionPropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentconditionproperty.html>
    ComponentConditionPropertyProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentconditionproperty.html#cfn-amplifyuibuilder-component-componentconditionproperty-else>
                                        else' :: (Prelude.Maybe ComponentPropertyProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentconditionproperty.html#cfn-amplifyuibuilder-component-componentconditionproperty-field>
                                        field :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentconditionproperty.html#cfn-amplifyuibuilder-component-componentconditionproperty-operand>
                                        operand :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentconditionproperty.html#cfn-amplifyuibuilder-component-componentconditionproperty-operandtype>
                                        operandType :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentconditionproperty.html#cfn-amplifyuibuilder-component-componentconditionproperty-operator>
                                        operator :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentconditionproperty.html#cfn-amplifyuibuilder-component-componentconditionproperty-property>
                                        property :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentconditionproperty.html#cfn-amplifyuibuilder-component-componentconditionproperty-then>
                                        then' :: (Prelude.Maybe ComponentPropertyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentConditionPropertyProperty ::
  ComponentConditionPropertyProperty
mkComponentConditionPropertyProperty
  = ComponentConditionPropertyProperty
      {haddock_workaround_ = (), else' = Prelude.Nothing,
       field = Prelude.Nothing, operand = Prelude.Nothing,
       operandType = Prelude.Nothing, operator = Prelude.Nothing,
       property = Prelude.Nothing, then' = Prelude.Nothing}
instance ToResourceProperties ComponentConditionPropertyProperty where
  toResourceProperties ComponentConditionPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.ComponentConditionProperty",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Else" Prelude.<$> else',
                            (JSON..=) "Field" Prelude.<$> field,
                            (JSON..=) "Operand" Prelude.<$> operand,
                            (JSON..=) "OperandType" Prelude.<$> operandType,
                            (JSON..=) "Operator" Prelude.<$> operator,
                            (JSON..=) "Property" Prelude.<$> property,
                            (JSON..=) "Then" Prelude.<$> then'])}
instance JSON.ToJSON ComponentConditionPropertyProperty where
  toJSON ComponentConditionPropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Else" Prelude.<$> else',
               (JSON..=) "Field" Prelude.<$> field,
               (JSON..=) "Operand" Prelude.<$> operand,
               (JSON..=) "OperandType" Prelude.<$> operandType,
               (JSON..=) "Operator" Prelude.<$> operator,
               (JSON..=) "Property" Prelude.<$> property,
               (JSON..=) "Then" Prelude.<$> then']))
instance Property "Else" ComponentConditionPropertyProperty where
  type PropertyType "Else" ComponentConditionPropertyProperty = ComponentPropertyProperty
  set newValue ComponentConditionPropertyProperty {..}
    = ComponentConditionPropertyProperty
        {else' = Prelude.pure newValue, ..}
instance Property "Field" ComponentConditionPropertyProperty where
  type PropertyType "Field" ComponentConditionPropertyProperty = Value Prelude.Text
  set newValue ComponentConditionPropertyProperty {..}
    = ComponentConditionPropertyProperty
        {field = Prelude.pure newValue, ..}
instance Property "Operand" ComponentConditionPropertyProperty where
  type PropertyType "Operand" ComponentConditionPropertyProperty = Value Prelude.Text
  set newValue ComponentConditionPropertyProperty {..}
    = ComponentConditionPropertyProperty
        {operand = Prelude.pure newValue, ..}
instance Property "OperandType" ComponentConditionPropertyProperty where
  type PropertyType "OperandType" ComponentConditionPropertyProperty = Value Prelude.Text
  set newValue ComponentConditionPropertyProperty {..}
    = ComponentConditionPropertyProperty
        {operandType = Prelude.pure newValue, ..}
instance Property "Operator" ComponentConditionPropertyProperty where
  type PropertyType "Operator" ComponentConditionPropertyProperty = Value Prelude.Text
  set newValue ComponentConditionPropertyProperty {..}
    = ComponentConditionPropertyProperty
        {operator = Prelude.pure newValue, ..}
instance Property "Property" ComponentConditionPropertyProperty where
  type PropertyType "Property" ComponentConditionPropertyProperty = Value Prelude.Text
  set newValue ComponentConditionPropertyProperty {..}
    = ComponentConditionPropertyProperty
        {property = Prelude.pure newValue, ..}
instance Property "Then" ComponentConditionPropertyProperty where
  type PropertyType "Then" ComponentConditionPropertyProperty = ComponentPropertyProperty
  set newValue ComponentConditionPropertyProperty {..}
    = ComponentConditionPropertyProperty
        {then' = Prelude.pure newValue, ..}