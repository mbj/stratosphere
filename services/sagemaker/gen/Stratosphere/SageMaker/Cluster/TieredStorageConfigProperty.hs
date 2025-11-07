module Stratosphere.SageMaker.Cluster.TieredStorageConfigProperty (
        TieredStorageConfigProperty(..), mkTieredStorageConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TieredStorageConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-tieredstorageconfig.html>
    TieredStorageConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-tieredstorageconfig.html#cfn-sagemaker-cluster-tieredstorageconfig-instancememoryallocationpercentage>
                                 instanceMemoryAllocationPercentage :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-tieredstorageconfig.html#cfn-sagemaker-cluster-tieredstorageconfig-mode>
                                 mode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTieredStorageConfigProperty ::
  Value Prelude.Text -> TieredStorageConfigProperty
mkTieredStorageConfigProperty mode
  = TieredStorageConfigProperty
      {haddock_workaround_ = (), mode = mode,
       instanceMemoryAllocationPercentage = Prelude.Nothing}
instance ToResourceProperties TieredStorageConfigProperty where
  toResourceProperties TieredStorageConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.TieredStorageConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Mode" JSON..= mode]
                           (Prelude.catMaybes
                              [(JSON..=) "InstanceMemoryAllocationPercentage"
                                 Prelude.<$> instanceMemoryAllocationPercentage]))}
instance JSON.ToJSON TieredStorageConfigProperty where
  toJSON TieredStorageConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Mode" JSON..= mode]
              (Prelude.catMaybes
                 [(JSON..=) "InstanceMemoryAllocationPercentage"
                    Prelude.<$> instanceMemoryAllocationPercentage])))
instance Property "InstanceMemoryAllocationPercentage" TieredStorageConfigProperty where
  type PropertyType "InstanceMemoryAllocationPercentage" TieredStorageConfigProperty = Value Prelude.Integer
  set newValue TieredStorageConfigProperty {..}
    = TieredStorageConfigProperty
        {instanceMemoryAllocationPercentage = Prelude.pure newValue, ..}
instance Property "Mode" TieredStorageConfigProperty where
  type PropertyType "Mode" TieredStorageConfigProperty = Value Prelude.Text
  set newValue TieredStorageConfigProperty {..}
    = TieredStorageConfigProperty {mode = newValue, ..}