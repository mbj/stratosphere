module Stratosphere.PCAConnectorAD.Template.GeneralFlagsV2Property (
        GeneralFlagsV2Property(..), mkGeneralFlagsV2Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeneralFlagsV2Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-generalflagsv2.html>
    GeneralFlagsV2Property {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-generalflagsv2.html#cfn-pcaconnectorad-template-generalflagsv2-autoenrollment>
                            autoEnrollment :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-generalflagsv2.html#cfn-pcaconnectorad-template-generalflagsv2-machinetype>
                            machineType :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeneralFlagsV2Property :: GeneralFlagsV2Property
mkGeneralFlagsV2Property
  = GeneralFlagsV2Property
      {haddock_workaround_ = (), autoEnrollment = Prelude.Nothing,
       machineType = Prelude.Nothing}
instance ToResourceProperties GeneralFlagsV2Property where
  toResourceProperties GeneralFlagsV2Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.GeneralFlagsV2",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoEnrollment" Prelude.<$> autoEnrollment,
                            (JSON..=) "MachineType" Prelude.<$> machineType])}
instance JSON.ToJSON GeneralFlagsV2Property where
  toJSON GeneralFlagsV2Property {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoEnrollment" Prelude.<$> autoEnrollment,
               (JSON..=) "MachineType" Prelude.<$> machineType]))
instance Property "AutoEnrollment" GeneralFlagsV2Property where
  type PropertyType "AutoEnrollment" GeneralFlagsV2Property = Value Prelude.Bool
  set newValue GeneralFlagsV2Property {..}
    = GeneralFlagsV2Property
        {autoEnrollment = Prelude.pure newValue, ..}
instance Property "MachineType" GeneralFlagsV2Property where
  type PropertyType "MachineType" GeneralFlagsV2Property = Value Prelude.Bool
  set newValue GeneralFlagsV2Property {..}
    = GeneralFlagsV2Property {machineType = Prelude.pure newValue, ..}