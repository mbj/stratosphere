module Stratosphere.EMRServerless.Application.SchedulerConfigurationProperty (
        SchedulerConfigurationProperty(..),
        mkSchedulerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchedulerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-schedulerconfiguration.html>
    SchedulerConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-schedulerconfiguration.html#cfn-emrserverless-application-schedulerconfiguration-maxconcurrentruns>
                                    maxConcurrentRuns :: (Prelude.Maybe (Value Prelude.Integer)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-schedulerconfiguration.html#cfn-emrserverless-application-schedulerconfiguration-queuetimeoutminutes>
                                    queueTimeoutMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchedulerConfigurationProperty :: SchedulerConfigurationProperty
mkSchedulerConfigurationProperty
  = SchedulerConfigurationProperty
      {haddock_workaround_ = (), maxConcurrentRuns = Prelude.Nothing,
       queueTimeoutMinutes = Prelude.Nothing}
instance ToResourceProperties SchedulerConfigurationProperty where
  toResourceProperties SchedulerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.SchedulerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxConcurrentRuns" Prelude.<$> maxConcurrentRuns,
                            (JSON..=) "QueueTimeoutMinutes" Prelude.<$> queueTimeoutMinutes])}
instance JSON.ToJSON SchedulerConfigurationProperty where
  toJSON SchedulerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxConcurrentRuns" Prelude.<$> maxConcurrentRuns,
               (JSON..=) "QueueTimeoutMinutes" Prelude.<$> queueTimeoutMinutes]))
instance Property "MaxConcurrentRuns" SchedulerConfigurationProperty where
  type PropertyType "MaxConcurrentRuns" SchedulerConfigurationProperty = Value Prelude.Integer
  set newValue SchedulerConfigurationProperty {..}
    = SchedulerConfigurationProperty
        {maxConcurrentRuns = Prelude.pure newValue, ..}
instance Property "QueueTimeoutMinutes" SchedulerConfigurationProperty where
  type PropertyType "QueueTimeoutMinutes" SchedulerConfigurationProperty = Value Prelude.Integer
  set newValue SchedulerConfigurationProperty {..}
    = SchedulerConfigurationProperty
        {queueTimeoutMinutes = Prelude.pure newValue, ..}