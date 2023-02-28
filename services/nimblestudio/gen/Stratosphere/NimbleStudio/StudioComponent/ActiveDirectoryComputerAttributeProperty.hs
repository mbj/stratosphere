module Stratosphere.NimbleStudio.StudioComponent.ActiveDirectoryComputerAttributeProperty (
        ActiveDirectoryComputerAttributeProperty(..),
        mkActiveDirectoryComputerAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActiveDirectoryComputerAttributeProperty
  = ActiveDirectoryComputerAttributeProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                                              value :: (Prelude.Maybe (Value Prelude.Text))}
mkActiveDirectoryComputerAttributeProperty ::
  ActiveDirectoryComputerAttributeProperty
mkActiveDirectoryComputerAttributeProperty
  = ActiveDirectoryComputerAttributeProperty
      {name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties ActiveDirectoryComputerAttributeProperty where
  toResourceProperties ActiveDirectoryComputerAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::StudioComponent.ActiveDirectoryComputerAttribute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ActiveDirectoryComputerAttributeProperty where
  toJSON ActiveDirectoryComputerAttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" ActiveDirectoryComputerAttributeProperty where
  type PropertyType "Name" ActiveDirectoryComputerAttributeProperty = Value Prelude.Text
  set newValue ActiveDirectoryComputerAttributeProperty {..}
    = ActiveDirectoryComputerAttributeProperty
        {name = Prelude.pure newValue, ..}
instance Property "Value" ActiveDirectoryComputerAttributeProperty where
  type PropertyType "Value" ActiveDirectoryComputerAttributeProperty = Value Prelude.Text
  set newValue ActiveDirectoryComputerAttributeProperty {..}
    = ActiveDirectoryComputerAttributeProperty
        {value = Prelude.pure newValue, ..}