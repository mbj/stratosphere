module Stratosphere.EMR.InstanceGroupConfig.EbsBlockDeviceConfigProperty (
        module Exports, EbsBlockDeviceConfigProperty(..),
        mkEbsBlockDeviceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.InstanceGroupConfig.VolumeSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EbsBlockDeviceConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html>
    EbsBlockDeviceConfigProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification>
                                  volumeSpecification :: VolumeSpecificationProperty,
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumesperinstance>
                                  volumesPerInstance :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEbsBlockDeviceConfigProperty ::
  VolumeSpecificationProperty -> EbsBlockDeviceConfigProperty
mkEbsBlockDeviceConfigProperty volumeSpecification
  = EbsBlockDeviceConfigProperty
      {haddock_workaround_ = (),
       volumeSpecification = volumeSpecification,
       volumesPerInstance = Prelude.Nothing}
instance ToResourceProperties EbsBlockDeviceConfigProperty where
  toResourceProperties EbsBlockDeviceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceGroupConfig.EbsBlockDeviceConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VolumeSpecification" JSON..= volumeSpecification]
                           (Prelude.catMaybes
                              [(JSON..=) "VolumesPerInstance" Prelude.<$> volumesPerInstance]))}
instance JSON.ToJSON EbsBlockDeviceConfigProperty where
  toJSON EbsBlockDeviceConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VolumeSpecification" JSON..= volumeSpecification]
              (Prelude.catMaybes
                 [(JSON..=) "VolumesPerInstance" Prelude.<$> volumesPerInstance])))
instance Property "VolumeSpecification" EbsBlockDeviceConfigProperty where
  type PropertyType "VolumeSpecification" EbsBlockDeviceConfigProperty = VolumeSpecificationProperty
  set newValue EbsBlockDeviceConfigProperty {..}
    = EbsBlockDeviceConfigProperty {volumeSpecification = newValue, ..}
instance Property "VolumesPerInstance" EbsBlockDeviceConfigProperty where
  type PropertyType "VolumesPerInstance" EbsBlockDeviceConfigProperty = Value Prelude.Integer
  set newValue EbsBlockDeviceConfigProperty {..}
    = EbsBlockDeviceConfigProperty
        {volumesPerInstance = Prelude.pure newValue, ..}