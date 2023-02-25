module Stratosphere.EMR.Cluster.VolumeSpecificationProperty (
        VolumeSpecificationProperty(..), mkVolumeSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumeSpecificationProperty
  = VolumeSpecificationProperty {iops :: (Prelude.Maybe (Value Prelude.Integer)),
                                 sizeInGB :: (Value Prelude.Integer),
                                 volumeType :: (Value Prelude.Text)}
mkVolumeSpecificationProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> VolumeSpecificationProperty
mkVolumeSpecificationProperty sizeInGB volumeType
  = VolumeSpecificationProperty
      {sizeInGB = sizeInGB, volumeType = volumeType,
       iops = Prelude.Nothing}
instance ToResourceProperties VolumeSpecificationProperty where
  toResourceProperties VolumeSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.VolumeSpecification",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SizeInGB" JSON..= sizeInGB, "VolumeType" JSON..= volumeType]
                           (Prelude.catMaybes [(JSON..=) "Iops" Prelude.<$> iops]))}
instance JSON.ToJSON VolumeSpecificationProperty where
  toJSON VolumeSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SizeInGB" JSON..= sizeInGB, "VolumeType" JSON..= volumeType]
              (Prelude.catMaybes [(JSON..=) "Iops" Prelude.<$> iops])))
instance Property "Iops" VolumeSpecificationProperty where
  type PropertyType "Iops" VolumeSpecificationProperty = Value Prelude.Integer
  set newValue VolumeSpecificationProperty {..}
    = VolumeSpecificationProperty {iops = Prelude.pure newValue, ..}
instance Property "SizeInGB" VolumeSpecificationProperty where
  type PropertyType "SizeInGB" VolumeSpecificationProperty = Value Prelude.Integer
  set newValue VolumeSpecificationProperty {..}
    = VolumeSpecificationProperty {sizeInGB = newValue, ..}
instance Property "VolumeType" VolumeSpecificationProperty where
  type PropertyType "VolumeType" VolumeSpecificationProperty = Value Prelude.Text
  set newValue VolumeSpecificationProperty {..}
    = VolumeSpecificationProperty {volumeType = newValue, ..}