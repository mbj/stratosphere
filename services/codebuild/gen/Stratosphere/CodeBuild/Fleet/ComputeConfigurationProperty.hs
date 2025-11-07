module Stratosphere.CodeBuild.Fleet.ComputeConfigurationProperty (
        ComputeConfigurationProperty(..), mkComputeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-computeconfiguration.html>
    ComputeConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-computeconfiguration.html#cfn-codebuild-fleet-computeconfiguration-disk>
                                  disk :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-computeconfiguration.html#cfn-codebuild-fleet-computeconfiguration-instancetype>
                                  instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-computeconfiguration.html#cfn-codebuild-fleet-computeconfiguration-machinetype>
                                  machineType :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-computeconfiguration.html#cfn-codebuild-fleet-computeconfiguration-memory>
                                  memory :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-computeconfiguration.html#cfn-codebuild-fleet-computeconfiguration-vcpu>
                                  vCpu :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputeConfigurationProperty :: ComputeConfigurationProperty
mkComputeConfigurationProperty
  = ComputeConfigurationProperty
      {haddock_workaround_ = (), disk = Prelude.Nothing,
       instanceType = Prelude.Nothing, machineType = Prelude.Nothing,
       memory = Prelude.Nothing, vCpu = Prelude.Nothing}
instance ToResourceProperties ComputeConfigurationProperty where
  toResourceProperties ComputeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Fleet.ComputeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "disk" Prelude.<$> disk,
                            (JSON..=) "instanceType" Prelude.<$> instanceType,
                            (JSON..=) "machineType" Prelude.<$> machineType,
                            (JSON..=) "memory" Prelude.<$> memory,
                            (JSON..=) "vCpu" Prelude.<$> vCpu])}
instance JSON.ToJSON ComputeConfigurationProperty where
  toJSON ComputeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "disk" Prelude.<$> disk,
               (JSON..=) "instanceType" Prelude.<$> instanceType,
               (JSON..=) "machineType" Prelude.<$> machineType,
               (JSON..=) "memory" Prelude.<$> memory,
               (JSON..=) "vCpu" Prelude.<$> vCpu]))
instance Property "disk" ComputeConfigurationProperty where
  type PropertyType "disk" ComputeConfigurationProperty = Value Prelude.Integer
  set newValue ComputeConfigurationProperty {..}
    = ComputeConfigurationProperty {disk = Prelude.pure newValue, ..}
instance Property "instanceType" ComputeConfigurationProperty where
  type PropertyType "instanceType" ComputeConfigurationProperty = Value Prelude.Text
  set newValue ComputeConfigurationProperty {..}
    = ComputeConfigurationProperty
        {instanceType = Prelude.pure newValue, ..}
instance Property "machineType" ComputeConfigurationProperty where
  type PropertyType "machineType" ComputeConfigurationProperty = Value Prelude.Text
  set newValue ComputeConfigurationProperty {..}
    = ComputeConfigurationProperty
        {machineType = Prelude.pure newValue, ..}
instance Property "memory" ComputeConfigurationProperty where
  type PropertyType "memory" ComputeConfigurationProperty = Value Prelude.Integer
  set newValue ComputeConfigurationProperty {..}
    = ComputeConfigurationProperty {memory = Prelude.pure newValue, ..}
instance Property "vCpu" ComputeConfigurationProperty where
  type PropertyType "vCpu" ComputeConfigurationProperty = Value Prelude.Integer
  set newValue ComputeConfigurationProperty {..}
    = ComputeConfigurationProperty {vCpu = Prelude.pure newValue, ..}