module Stratosphere.Batch.JobDefinition.RuntimePlatformProperty (
        RuntimePlatformProperty(..), mkRuntimePlatformProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuntimePlatformProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties-runtimeplatform.html>
    RuntimePlatformProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties-runtimeplatform.html#cfn-batch-jobdefinition-ecstaskproperties-runtimeplatform-cpuarchitecture>
                             cpuArchitecture :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties-runtimeplatform.html#cfn-batch-jobdefinition-ecstaskproperties-runtimeplatform-operatingsystemfamily>
                             operatingSystemFamily :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuntimePlatformProperty :: RuntimePlatformProperty
mkRuntimePlatformProperty
  = RuntimePlatformProperty
      {haddock_workaround_ = (), cpuArchitecture = Prelude.Nothing,
       operatingSystemFamily = Prelude.Nothing}
instance ToResourceProperties RuntimePlatformProperty where
  toResourceProperties RuntimePlatformProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.RuntimePlatform",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CpuArchitecture" Prelude.<$> cpuArchitecture,
                            (JSON..=) "OperatingSystemFamily"
                              Prelude.<$> operatingSystemFamily])}
instance JSON.ToJSON RuntimePlatformProperty where
  toJSON RuntimePlatformProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CpuArchitecture" Prelude.<$> cpuArchitecture,
               (JSON..=) "OperatingSystemFamily"
                 Prelude.<$> operatingSystemFamily]))
instance Property "CpuArchitecture" RuntimePlatformProperty where
  type PropertyType "CpuArchitecture" RuntimePlatformProperty = Value Prelude.Text
  set newValue RuntimePlatformProperty {..}
    = RuntimePlatformProperty
        {cpuArchitecture = Prelude.pure newValue, ..}
instance Property "OperatingSystemFamily" RuntimePlatformProperty where
  type PropertyType "OperatingSystemFamily" RuntimePlatformProperty = Value Prelude.Text
  set newValue RuntimePlatformProperty {..}
    = RuntimePlatformProperty
        {operatingSystemFamily = Prelude.pure newValue, ..}