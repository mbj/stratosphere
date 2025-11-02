module Stratosphere.PCAConnectorAD.Template.GeneralFlagsV3Property (
        GeneralFlagsV3Property(..), mkGeneralFlagsV3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeneralFlagsV3Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-generalflagsv3.html>
    GeneralFlagsV3Property {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-generalflagsv3.html#cfn-pcaconnectorad-template-generalflagsv3-autoenrollment>
                            autoEnrollment :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-generalflagsv3.html#cfn-pcaconnectorad-template-generalflagsv3-machinetype>
                            machineType :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeneralFlagsV3Property :: GeneralFlagsV3Property
mkGeneralFlagsV3Property
  = GeneralFlagsV3Property
      {haddock_workaround_ = (), autoEnrollment = Prelude.Nothing,
       machineType = Prelude.Nothing}
instance ToResourceProperties GeneralFlagsV3Property where
  toResourceProperties GeneralFlagsV3Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.GeneralFlagsV3",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoEnrollment" Prelude.<$> autoEnrollment,
                            (JSON..=) "MachineType" Prelude.<$> machineType])}
instance JSON.ToJSON GeneralFlagsV3Property where
  toJSON GeneralFlagsV3Property {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoEnrollment" Prelude.<$> autoEnrollment,
               (JSON..=) "MachineType" Prelude.<$> machineType]))
instance Property "AutoEnrollment" GeneralFlagsV3Property where
  type PropertyType "AutoEnrollment" GeneralFlagsV3Property = Value Prelude.Bool
  set newValue GeneralFlagsV3Property {..}
    = GeneralFlagsV3Property
        {autoEnrollment = Prelude.pure newValue, ..}
instance Property "MachineType" GeneralFlagsV3Property where
  type PropertyType "MachineType" GeneralFlagsV3Property = Value Prelude.Bool
  set newValue GeneralFlagsV3Property {..}
    = GeneralFlagsV3Property {machineType = Prelude.pure newValue, ..}