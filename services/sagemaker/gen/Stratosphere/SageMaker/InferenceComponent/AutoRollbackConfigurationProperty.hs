module Stratosphere.SageMaker.InferenceComponent.AutoRollbackConfigurationProperty (
        module Exports, AutoRollbackConfigurationProperty(..),
        mkAutoRollbackConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceComponent.AlarmProperty as Exports
import Stratosphere.ResourceProperties
data AutoRollbackConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-autorollbackconfiguration.html>
    AutoRollbackConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-autorollbackconfiguration.html#cfn-sagemaker-inferencecomponent-autorollbackconfiguration-alarms>
                                       alarms :: [AlarmProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoRollbackConfigurationProperty ::
  [AlarmProperty] -> AutoRollbackConfigurationProperty
mkAutoRollbackConfigurationProperty alarms
  = AutoRollbackConfigurationProperty
      {haddock_workaround_ = (), alarms = alarms}
instance ToResourceProperties AutoRollbackConfigurationProperty where
  toResourceProperties AutoRollbackConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceComponent.AutoRollbackConfiguration",
         supportsTags = Prelude.False,
         properties = ["Alarms" JSON..= alarms]}
instance JSON.ToJSON AutoRollbackConfigurationProperty where
  toJSON AutoRollbackConfigurationProperty {..}
    = JSON.object ["Alarms" JSON..= alarms]
instance Property "Alarms" AutoRollbackConfigurationProperty where
  type PropertyType "Alarms" AutoRollbackConfigurationProperty = [AlarmProperty]
  set newValue AutoRollbackConfigurationProperty {..}
    = AutoRollbackConfigurationProperty {alarms = newValue, ..}