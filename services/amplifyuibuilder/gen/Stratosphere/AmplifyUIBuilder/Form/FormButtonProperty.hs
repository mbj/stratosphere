module Stratosphere.AmplifyUIBuilder.Form.FormButtonProperty (
        module Exports, FormButtonProperty(..), mkFormButtonProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FieldPositionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormButtonProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formbutton.html>
    FormButtonProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formbutton.html#cfn-amplifyuibuilder-form-formbutton-children>
                        children :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formbutton.html#cfn-amplifyuibuilder-form-formbutton-excluded>
                        excluded :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formbutton.html#cfn-amplifyuibuilder-form-formbutton-position>
                        position :: (Prelude.Maybe FieldPositionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormButtonProperty :: FormButtonProperty
mkFormButtonProperty
  = FormButtonProperty
      {haddock_workaround_ = (), children = Prelude.Nothing,
       excluded = Prelude.Nothing, position = Prelude.Nothing}
instance ToResourceProperties FormButtonProperty where
  toResourceProperties FormButtonProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormButton",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Children" Prelude.<$> children,
                            (JSON..=) "Excluded" Prelude.<$> excluded,
                            (JSON..=) "Position" Prelude.<$> position])}
instance JSON.ToJSON FormButtonProperty where
  toJSON FormButtonProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Children" Prelude.<$> children,
               (JSON..=) "Excluded" Prelude.<$> excluded,
               (JSON..=) "Position" Prelude.<$> position]))
instance Property "Children" FormButtonProperty where
  type PropertyType "Children" FormButtonProperty = Value Prelude.Text
  set newValue FormButtonProperty {..}
    = FormButtonProperty {children = Prelude.pure newValue, ..}
instance Property "Excluded" FormButtonProperty where
  type PropertyType "Excluded" FormButtonProperty = Value Prelude.Bool
  set newValue FormButtonProperty {..}
    = FormButtonProperty {excluded = Prelude.pure newValue, ..}
instance Property "Position" FormButtonProperty where
  type PropertyType "Position" FormButtonProperty = FieldPositionProperty
  set newValue FormButtonProperty {..}
    = FormButtonProperty {position = Prelude.pure newValue, ..}