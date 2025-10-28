module Stratosphere.AmplifyUIBuilder.Form.FieldConfigProperty (
        module Exports, FieldConfigProperty(..), mkFieldConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FieldInputConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FieldPositionProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FieldValidationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldconfig.html>
    FieldConfigProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldconfig.html#cfn-amplifyuibuilder-form-fieldconfig-excluded>
                         excluded :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldconfig.html#cfn-amplifyuibuilder-form-fieldconfig-inputtype>
                         inputType :: (Prelude.Maybe FieldInputConfigProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldconfig.html#cfn-amplifyuibuilder-form-fieldconfig-label>
                         label :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldconfig.html#cfn-amplifyuibuilder-form-fieldconfig-position>
                         position :: (Prelude.Maybe FieldPositionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fieldconfig.html#cfn-amplifyuibuilder-form-fieldconfig-validations>
                         validations :: (Prelude.Maybe [FieldValidationConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldConfigProperty :: FieldConfigProperty
mkFieldConfigProperty
  = FieldConfigProperty
      {haddock_workaround_ = (), excluded = Prelude.Nothing,
       inputType = Prelude.Nothing, label = Prelude.Nothing,
       position = Prelude.Nothing, validations = Prelude.Nothing}
instance ToResourceProperties FieldConfigProperty where
  toResourceProperties FieldConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FieldConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Excluded" Prelude.<$> excluded,
                            (JSON..=) "InputType" Prelude.<$> inputType,
                            (JSON..=) "Label" Prelude.<$> label,
                            (JSON..=) "Position" Prelude.<$> position,
                            (JSON..=) "Validations" Prelude.<$> validations])}
instance JSON.ToJSON FieldConfigProperty where
  toJSON FieldConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Excluded" Prelude.<$> excluded,
               (JSON..=) "InputType" Prelude.<$> inputType,
               (JSON..=) "Label" Prelude.<$> label,
               (JSON..=) "Position" Prelude.<$> position,
               (JSON..=) "Validations" Prelude.<$> validations]))
instance Property "Excluded" FieldConfigProperty where
  type PropertyType "Excluded" FieldConfigProperty = Value Prelude.Bool
  set newValue FieldConfigProperty {..}
    = FieldConfigProperty {excluded = Prelude.pure newValue, ..}
instance Property "InputType" FieldConfigProperty where
  type PropertyType "InputType" FieldConfigProperty = FieldInputConfigProperty
  set newValue FieldConfigProperty {..}
    = FieldConfigProperty {inputType = Prelude.pure newValue, ..}
instance Property "Label" FieldConfigProperty where
  type PropertyType "Label" FieldConfigProperty = Value Prelude.Text
  set newValue FieldConfigProperty {..}
    = FieldConfigProperty {label = Prelude.pure newValue, ..}
instance Property "Position" FieldConfigProperty where
  type PropertyType "Position" FieldConfigProperty = FieldPositionProperty
  set newValue FieldConfigProperty {..}
    = FieldConfigProperty {position = Prelude.pure newValue, ..}
instance Property "Validations" FieldConfigProperty where
  type PropertyType "Validations" FieldConfigProperty = [FieldValidationConfigurationProperty]
  set newValue FieldConfigProperty {..}
    = FieldConfigProperty {validations = Prelude.pure newValue, ..}