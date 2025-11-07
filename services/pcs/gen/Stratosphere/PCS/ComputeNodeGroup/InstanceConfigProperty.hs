module Stratosphere.PCS.ComputeNodeGroup.InstanceConfigProperty (
        InstanceConfigProperty(..), mkInstanceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-computenodegroup-instanceconfig.html>
    InstanceConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-computenodegroup-instanceconfig.html#cfn-pcs-computenodegroup-instanceconfig-instancetype>
                            instanceType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceConfigProperty :: InstanceConfigProperty
mkInstanceConfigProperty
  = InstanceConfigProperty
      {haddock_workaround_ = (), instanceType = Prelude.Nothing}
instance ToResourceProperties InstanceConfigProperty where
  toResourceProperties InstanceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::ComputeNodeGroup.InstanceConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InstanceType" Prelude.<$> instanceType])}
instance JSON.ToJSON InstanceConfigProperty where
  toJSON InstanceConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InstanceType" Prelude.<$> instanceType]))
instance Property "InstanceType" InstanceConfigProperty where
  type PropertyType "InstanceType" InstanceConfigProperty = Value Prelude.Text
  set newValue InstanceConfigProperty {..}
    = InstanceConfigProperty {instanceType = Prelude.pure newValue, ..}