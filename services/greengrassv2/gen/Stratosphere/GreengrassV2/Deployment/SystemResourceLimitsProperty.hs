module Stratosphere.GreengrassV2.Deployment.SystemResourceLimitsProperty (
        SystemResourceLimitsProperty(..), mkSystemResourceLimitsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SystemResourceLimitsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-systemresourcelimits.html>
    SystemResourceLimitsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-systemresourcelimits.html#cfn-greengrassv2-deployment-systemresourcelimits-cpus>
                                  cpus :: (Prelude.Maybe (Value Prelude.Double)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-systemresourcelimits.html#cfn-greengrassv2-deployment-systemresourcelimits-memory>
                                  memory :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSystemResourceLimitsProperty :: SystemResourceLimitsProperty
mkSystemResourceLimitsProperty
  = SystemResourceLimitsProperty
      {haddock_workaround_ = (), cpus = Prelude.Nothing,
       memory = Prelude.Nothing}
instance ToResourceProperties SystemResourceLimitsProperty where
  toResourceProperties SystemResourceLimitsProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.SystemResourceLimits",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cpus" Prelude.<$> cpus,
                            (JSON..=) "Memory" Prelude.<$> memory])}
instance JSON.ToJSON SystemResourceLimitsProperty where
  toJSON SystemResourceLimitsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cpus" Prelude.<$> cpus,
               (JSON..=) "Memory" Prelude.<$> memory]))
instance Property "Cpus" SystemResourceLimitsProperty where
  type PropertyType "Cpus" SystemResourceLimitsProperty = Value Prelude.Double
  set newValue SystemResourceLimitsProperty {..}
    = SystemResourceLimitsProperty {cpus = Prelude.pure newValue, ..}
instance Property "Memory" SystemResourceLimitsProperty where
  type PropertyType "Memory" SystemResourceLimitsProperty = Value Prelude.Integer
  set newValue SystemResourceLimitsProperty {..}
    = SystemResourceLimitsProperty {memory = Prelude.pure newValue, ..}