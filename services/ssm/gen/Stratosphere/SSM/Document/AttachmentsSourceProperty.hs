module Stratosphere.SSM.Document.AttachmentsSourceProperty (
        AttachmentsSourceProperty(..), mkAttachmentsSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttachmentsSourceProperty
  = AttachmentsSourceProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                               name :: (Prelude.Maybe (Value Prelude.Text)),
                               values :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkAttachmentsSourceProperty :: AttachmentsSourceProperty
mkAttachmentsSourceProperty
  = AttachmentsSourceProperty
      {key = Prelude.Nothing, name = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties AttachmentsSourceProperty where
  toResourceProperties AttachmentsSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::Document.AttachmentsSource",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON AttachmentsSourceProperty where
  toJSON AttachmentsSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Key" AttachmentsSourceProperty where
  type PropertyType "Key" AttachmentsSourceProperty = Value Prelude.Text
  set newValue AttachmentsSourceProperty {..}
    = AttachmentsSourceProperty {key = Prelude.pure newValue, ..}
instance Property "Name" AttachmentsSourceProperty where
  type PropertyType "Name" AttachmentsSourceProperty = Value Prelude.Text
  set newValue AttachmentsSourceProperty {..}
    = AttachmentsSourceProperty {name = Prelude.pure newValue, ..}
instance Property "Values" AttachmentsSourceProperty where
  type PropertyType "Values" AttachmentsSourceProperty = ValueList (Value Prelude.Text)
  set newValue AttachmentsSourceProperty {..}
    = AttachmentsSourceProperty {values = Prelude.pure newValue, ..}