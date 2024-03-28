module Stratosphere.PCAConnectorAD.Template.GeneralFlagsV4Property (
        GeneralFlagsV4Property(..), mkGeneralFlagsV4Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeneralFlagsV4Property
  = GeneralFlagsV4Property {autoEnrollment :: (Prelude.Maybe (Value Prelude.Bool)),
                            machineType :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeneralFlagsV4Property :: GeneralFlagsV4Property
mkGeneralFlagsV4Property
  = GeneralFlagsV4Property
      {autoEnrollment = Prelude.Nothing, machineType = Prelude.Nothing}
instance ToResourceProperties GeneralFlagsV4Property where
  toResourceProperties GeneralFlagsV4Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.GeneralFlagsV4",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoEnrollment" Prelude.<$> autoEnrollment,
                            (JSON..=) "MachineType" Prelude.<$> machineType])}
instance JSON.ToJSON GeneralFlagsV4Property where
  toJSON GeneralFlagsV4Property {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoEnrollment" Prelude.<$> autoEnrollment,
               (JSON..=) "MachineType" Prelude.<$> machineType]))
instance Property "AutoEnrollment" GeneralFlagsV4Property where
  type PropertyType "AutoEnrollment" GeneralFlagsV4Property = Value Prelude.Bool
  set newValue GeneralFlagsV4Property {..}
    = GeneralFlagsV4Property
        {autoEnrollment = Prelude.pure newValue, ..}
instance Property "MachineType" GeneralFlagsV4Property where
  type PropertyType "MachineType" GeneralFlagsV4Property = Value Prelude.Bool
  set newValue GeneralFlagsV4Property {..}
    = GeneralFlagsV4Property {machineType = Prelude.pure newValue, ..}