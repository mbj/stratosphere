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
  = FormButtonProperty {children :: (Prelude.Maybe (Value Prelude.Text)),
                        excluded :: (Prelude.Maybe (Value Prelude.Bool)),
                        position :: (Prelude.Maybe FieldPositionProperty)}
mkFormButtonProperty :: FormButtonProperty
mkFormButtonProperty
  = FormButtonProperty
      {children = Prelude.Nothing, excluded = Prelude.Nothing,
       position = Prelude.Nothing}
instance ToResourceProperties FormButtonProperty where
  toResourceProperties FormButtonProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormButton",
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