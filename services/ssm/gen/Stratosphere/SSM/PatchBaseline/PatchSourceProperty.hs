module Stratosphere.SSM.PatchBaseline.PatchSourceProperty (
        PatchSourceProperty(..), mkPatchSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PatchSourceProperty
  = PatchSourceProperty {configuration :: (Prelude.Maybe (Value Prelude.Text)),
                         name :: (Prelude.Maybe (Value Prelude.Text)),
                         products :: (Prelude.Maybe (ValueList Prelude.Text))}
mkPatchSourceProperty :: PatchSourceProperty
mkPatchSourceProperty
  = PatchSourceProperty
      {configuration = Prelude.Nothing, name = Prelude.Nothing,
       products = Prelude.Nothing}
instance ToResourceProperties PatchSourceProperty where
  toResourceProperties PatchSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::PatchBaseline.PatchSource",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Configuration" Prelude.<$> configuration,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Products" Prelude.<$> products])}
instance JSON.ToJSON PatchSourceProperty where
  toJSON PatchSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Configuration" Prelude.<$> configuration,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Products" Prelude.<$> products]))
instance Property "Configuration" PatchSourceProperty where
  type PropertyType "Configuration" PatchSourceProperty = Value Prelude.Text
  set newValue PatchSourceProperty {..}
    = PatchSourceProperty {configuration = Prelude.pure newValue, ..}
instance Property "Name" PatchSourceProperty where
  type PropertyType "Name" PatchSourceProperty = Value Prelude.Text
  set newValue PatchSourceProperty {..}
    = PatchSourceProperty {name = Prelude.pure newValue, ..}
instance Property "Products" PatchSourceProperty where
  type PropertyType "Products" PatchSourceProperty = ValueList Prelude.Text
  set newValue PatchSourceProperty {..}
    = PatchSourceProperty {products = Prelude.pure newValue, ..}