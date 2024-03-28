module Stratosphere.SageMaker.InferenceComponent.InferenceComponentComputeResourceRequirementsProperty (
        InferenceComponentComputeResourceRequirementsProperty(..),
        mkInferenceComponentComputeResourceRequirementsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceComponentComputeResourceRequirementsProperty
  = InferenceComponentComputeResourceRequirementsProperty {maxMemoryRequiredInMb :: (Prelude.Maybe (Value Prelude.Integer)),
                                                           minMemoryRequiredInMb :: (Prelude.Maybe (Value Prelude.Integer)),
                                                           numberOfAcceleratorDevicesRequired :: (Prelude.Maybe (Value Prelude.Double)),
                                                           numberOfCpuCoresRequired :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceComponentComputeResourceRequirementsProperty ::
  InferenceComponentComputeResourceRequirementsProperty
mkInferenceComponentComputeResourceRequirementsProperty
  = InferenceComponentComputeResourceRequirementsProperty
      {maxMemoryRequiredInMb = Prelude.Nothing,
       minMemoryRequiredInMb = Prelude.Nothing,
       numberOfAcceleratorDevicesRequired = Prelude.Nothing,
       numberOfCpuCoresRequired = Prelude.Nothing}
instance ToResourceProperties InferenceComponentComputeResourceRequirementsProperty where
  toResourceProperties
    InferenceComponentComputeResourceRequirementsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceComponent.InferenceComponentComputeResourceRequirements",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxMemoryRequiredInMb"
                              Prelude.<$> maxMemoryRequiredInMb,
                            (JSON..=) "MinMemoryRequiredInMb"
                              Prelude.<$> minMemoryRequiredInMb,
                            (JSON..=) "NumberOfAcceleratorDevicesRequired"
                              Prelude.<$> numberOfAcceleratorDevicesRequired,
                            (JSON..=) "NumberOfCpuCoresRequired"
                              Prelude.<$> numberOfCpuCoresRequired])}
instance JSON.ToJSON InferenceComponentComputeResourceRequirementsProperty where
  toJSON InferenceComponentComputeResourceRequirementsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxMemoryRequiredInMb"
                 Prelude.<$> maxMemoryRequiredInMb,
               (JSON..=) "MinMemoryRequiredInMb"
                 Prelude.<$> minMemoryRequiredInMb,
               (JSON..=) "NumberOfAcceleratorDevicesRequired"
                 Prelude.<$> numberOfAcceleratorDevicesRequired,
               (JSON..=) "NumberOfCpuCoresRequired"
                 Prelude.<$> numberOfCpuCoresRequired]))
instance Property "MaxMemoryRequiredInMb" InferenceComponentComputeResourceRequirementsProperty where
  type PropertyType "MaxMemoryRequiredInMb" InferenceComponentComputeResourceRequirementsProperty = Value Prelude.Integer
  set
    newValue
    InferenceComponentComputeResourceRequirementsProperty {..}
    = InferenceComponentComputeResourceRequirementsProperty
        {maxMemoryRequiredInMb = Prelude.pure newValue, ..}
instance Property "MinMemoryRequiredInMb" InferenceComponentComputeResourceRequirementsProperty where
  type PropertyType "MinMemoryRequiredInMb" InferenceComponentComputeResourceRequirementsProperty = Value Prelude.Integer
  set
    newValue
    InferenceComponentComputeResourceRequirementsProperty {..}
    = InferenceComponentComputeResourceRequirementsProperty
        {minMemoryRequiredInMb = Prelude.pure newValue, ..}
instance Property "NumberOfAcceleratorDevicesRequired" InferenceComponentComputeResourceRequirementsProperty where
  type PropertyType "NumberOfAcceleratorDevicesRequired" InferenceComponentComputeResourceRequirementsProperty = Value Prelude.Double
  set
    newValue
    InferenceComponentComputeResourceRequirementsProperty {..}
    = InferenceComponentComputeResourceRequirementsProperty
        {numberOfAcceleratorDevicesRequired = Prelude.pure newValue, ..}
instance Property "NumberOfCpuCoresRequired" InferenceComponentComputeResourceRequirementsProperty where
  type PropertyType "NumberOfCpuCoresRequired" InferenceComponentComputeResourceRequirementsProperty = Value Prelude.Double
  set
    newValue
    InferenceComponentComputeResourceRequirementsProperty {..}
    = InferenceComponentComputeResourceRequirementsProperty
        {numberOfCpuCoresRequired = Prelude.pure newValue, ..}