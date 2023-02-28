module Stratosphere.SageMaker.Endpoint.AutoRollbackConfigProperty (
        module Exports, AutoRollbackConfigProperty(..),
        mkAutoRollbackConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Endpoint.AlarmProperty as Exports
import Stratosphere.ResourceProperties
data AutoRollbackConfigProperty
  = AutoRollbackConfigProperty {alarms :: [AlarmProperty]}
mkAutoRollbackConfigProperty ::
  [AlarmProperty] -> AutoRollbackConfigProperty
mkAutoRollbackConfigProperty alarms
  = AutoRollbackConfigProperty {alarms = alarms}
instance ToResourceProperties AutoRollbackConfigProperty where
  toResourceProperties AutoRollbackConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Endpoint.AutoRollbackConfig",
         supportsTags = Prelude.False,
         properties = ["Alarms" JSON..= alarms]}
instance JSON.ToJSON AutoRollbackConfigProperty where
  toJSON AutoRollbackConfigProperty {..}
    = JSON.object ["Alarms" JSON..= alarms]
instance Property "Alarms" AutoRollbackConfigProperty where
  type PropertyType "Alarms" AutoRollbackConfigProperty = [AlarmProperty]
  set newValue AutoRollbackConfigProperty {}
    = AutoRollbackConfigProperty {alarms = newValue, ..}