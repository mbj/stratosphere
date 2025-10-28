module Stratosphere.EMR.InstanceFleetConfig.VolumeSpecificationProperty (
        VolumeSpecificationProperty(..), mkVolumeSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumeSpecificationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-volumespecification.html>
    VolumeSpecificationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-volumespecification.html#cfn-elasticmapreduce-instancefleetconfig-volumespecification-iops>
                                 iops :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-volumespecification.html#cfn-elasticmapreduce-instancefleetconfig-volumespecification-sizeingb>
                                 sizeInGB :: (Value Prelude.Integer),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-volumespecification.html#cfn-elasticmapreduce-instancefleetconfig-volumespecification-throughput>
                                 throughput :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-volumespecification.html#cfn-elasticmapreduce-instancefleetconfig-volumespecification-volumetype>
                                 volumeType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolumeSpecificationProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> VolumeSpecificationProperty
mkVolumeSpecificationProperty sizeInGB volumeType
  = VolumeSpecificationProperty
      {sizeInGB = sizeInGB, volumeType = volumeType,
       iops = Prelude.Nothing, throughput = Prelude.Nothing}
instance ToResourceProperties VolumeSpecificationProperty where
  toResourceProperties VolumeSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceFleetConfig.VolumeSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SizeInGB" JSON..= sizeInGB, "VolumeType" JSON..= volumeType]
                           (Prelude.catMaybes
                              [(JSON..=) "Iops" Prelude.<$> iops,
                               (JSON..=) "Throughput" Prelude.<$> throughput]))}
instance JSON.ToJSON VolumeSpecificationProperty where
  toJSON VolumeSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SizeInGB" JSON..= sizeInGB, "VolumeType" JSON..= volumeType]
              (Prelude.catMaybes
                 [(JSON..=) "Iops" Prelude.<$> iops,
                  (JSON..=) "Throughput" Prelude.<$> throughput])))
instance Property "Iops" VolumeSpecificationProperty where
  type PropertyType "Iops" VolumeSpecificationProperty = Value Prelude.Integer
  set newValue VolumeSpecificationProperty {..}
    = VolumeSpecificationProperty {iops = Prelude.pure newValue, ..}
instance Property "SizeInGB" VolumeSpecificationProperty where
  type PropertyType "SizeInGB" VolumeSpecificationProperty = Value Prelude.Integer
  set newValue VolumeSpecificationProperty {..}
    = VolumeSpecificationProperty {sizeInGB = newValue, ..}
instance Property "Throughput" VolumeSpecificationProperty where
  type PropertyType "Throughput" VolumeSpecificationProperty = Value Prelude.Integer
  set newValue VolumeSpecificationProperty {..}
    = VolumeSpecificationProperty
        {throughput = Prelude.pure newValue, ..}
instance Property "VolumeType" VolumeSpecificationProperty where
  type PropertyType "VolumeType" VolumeSpecificationProperty = Value Prelude.Text
  set newValue VolumeSpecificationProperty {..}
    = VolumeSpecificationProperty {volumeType = newValue, ..}