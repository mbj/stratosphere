module Stratosphere.AmplifyUIBuilder.Form.FormCTAProperty (
        module Exports, FormCTAProperty(..), mkFormCTAProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FormButtonProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormCTAProperty
  = FormCTAProperty {cancel :: (Prelude.Maybe FormButtonProperty),
                     clear :: (Prelude.Maybe FormButtonProperty),
                     position :: (Prelude.Maybe (Value Prelude.Text)),
                     submit :: (Prelude.Maybe FormButtonProperty)}
mkFormCTAProperty :: FormCTAProperty
mkFormCTAProperty
  = FormCTAProperty
      {cancel = Prelude.Nothing, clear = Prelude.Nothing,
       position = Prelude.Nothing, submit = Prelude.Nothing}
instance ToResourceProperties FormCTAProperty where
  toResourceProperties FormCTAProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormCTA",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cancel" Prelude.<$> cancel,
                            (JSON..=) "Clear" Prelude.<$> clear,
                            (JSON..=) "Position" Prelude.<$> position,
                            (JSON..=) "Submit" Prelude.<$> submit])}
instance JSON.ToJSON FormCTAProperty where
  toJSON FormCTAProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cancel" Prelude.<$> cancel,
               (JSON..=) "Clear" Prelude.<$> clear,
               (JSON..=) "Position" Prelude.<$> position,
               (JSON..=) "Submit" Prelude.<$> submit]))
instance Property "Cancel" FormCTAProperty where
  type PropertyType "Cancel" FormCTAProperty = FormButtonProperty
  set newValue FormCTAProperty {..}
    = FormCTAProperty {cancel = Prelude.pure newValue, ..}
instance Property "Clear" FormCTAProperty where
  type PropertyType "Clear" FormCTAProperty = FormButtonProperty
  set newValue FormCTAProperty {..}
    = FormCTAProperty {clear = Prelude.pure newValue, ..}
instance Property "Position" FormCTAProperty where
  type PropertyType "Position" FormCTAProperty = Value Prelude.Text
  set newValue FormCTAProperty {..}
    = FormCTAProperty {position = Prelude.pure newValue, ..}
instance Property "Submit" FormCTAProperty where
  type PropertyType "Submit" FormCTAProperty = FormButtonProperty
  set newValue FormCTAProperty {..}
    = FormCTAProperty {submit = Prelude.pure newValue, ..}