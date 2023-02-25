module Stratosphere.Kendra.Index.ValueImportanceItemProperty (
        ValueImportanceItemProperty(..), mkValueImportanceItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValueImportanceItemProperty
  = ValueImportanceItemProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                                 value :: (Prelude.Maybe (Value Prelude.Integer))}
mkValueImportanceItemProperty :: ValueImportanceItemProperty
mkValueImportanceItemProperty
  = ValueImportanceItemProperty
      {key = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties ValueImportanceItemProperty where
  toResourceProperties ValueImportanceItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Index.ValueImportanceItem",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ValueImportanceItemProperty where
  toJSON ValueImportanceItemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" ValueImportanceItemProperty where
  type PropertyType "Key" ValueImportanceItemProperty = Value Prelude.Text
  set newValue ValueImportanceItemProperty {..}
    = ValueImportanceItemProperty {key = Prelude.pure newValue, ..}
instance Property "Value" ValueImportanceItemProperty where
  type PropertyType "Value" ValueImportanceItemProperty = Value Prelude.Integer
  set newValue ValueImportanceItemProperty {..}
    = ValueImportanceItemProperty {value = Prelude.pure newValue, ..}