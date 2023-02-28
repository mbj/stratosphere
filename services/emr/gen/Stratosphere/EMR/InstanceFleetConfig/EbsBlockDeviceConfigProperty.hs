module Stratosphere.EMR.InstanceFleetConfig.EbsBlockDeviceConfigProperty (
        module Exports, EbsBlockDeviceConfigProperty(..),
        mkEbsBlockDeviceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.InstanceFleetConfig.VolumeSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EbsBlockDeviceConfigProperty
  = EbsBlockDeviceConfigProperty {volumeSpecification :: VolumeSpecificationProperty,
                                  volumesPerInstance :: (Prelude.Maybe (Value Prelude.Integer))}
mkEbsBlockDeviceConfigProperty ::
  VolumeSpecificationProperty -> EbsBlockDeviceConfigProperty
mkEbsBlockDeviceConfigProperty volumeSpecification
  = EbsBlockDeviceConfigProperty
      {volumeSpecification = volumeSpecification,
       volumesPerInstance = Prelude.Nothing}
instance ToResourceProperties EbsBlockDeviceConfigProperty where
  toResourceProperties EbsBlockDeviceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceFleetConfig.EbsBlockDeviceConfig",
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