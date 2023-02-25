module Stratosphere.EMRServerless.Application.InitialCapacityConfigProperty (
        module Exports, InitialCapacityConfigProperty(..),
        mkInitialCapacityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.WorkerConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InitialCapacityConfigProperty
  = InitialCapacityConfigProperty {workerConfiguration :: WorkerConfigurationProperty,
                                   workerCount :: (Value Prelude.Integer)}
mkInitialCapacityConfigProperty ::
  WorkerConfigurationProperty
  -> Value Prelude.Integer -> InitialCapacityConfigProperty
mkInitialCapacityConfigProperty workerConfiguration workerCount
  = InitialCapacityConfigProperty
      {workerConfiguration = workerConfiguration,
       workerCount = workerCount}
instance ToResourceProperties InitialCapacityConfigProperty where
  toResourceProperties InitialCapacityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.InitialCapacityConfig",
         properties = ["WorkerConfiguration" JSON..= workerConfiguration,
                       "WorkerCount" JSON..= workerCount]}
instance JSON.ToJSON InitialCapacityConfigProperty where
  toJSON InitialCapacityConfigProperty {..}
    = JSON.object
        ["WorkerConfiguration" JSON..= workerConfiguration,
         "WorkerCount" JSON..= workerCount]
instance Property "WorkerConfiguration" InitialCapacityConfigProperty where
  type PropertyType "WorkerConfiguration" InitialCapacityConfigProperty = WorkerConfigurationProperty
  set newValue InitialCapacityConfigProperty {..}
    = InitialCapacityConfigProperty
        {workerConfiguration = newValue, ..}
instance Property "WorkerCount" InitialCapacityConfigProperty where
  type PropertyType "WorkerCount" InitialCapacityConfigProperty = Value Prelude.Integer
  set newValue InitialCapacityConfigProperty {..}
    = InitialCapacityConfigProperty {workerCount = newValue, ..}