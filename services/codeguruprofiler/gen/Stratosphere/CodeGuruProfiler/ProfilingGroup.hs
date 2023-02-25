module Stratosphere.CodeGuruProfiler.ProfilingGroup (
        module Exports, ProfilingGroup(..), mkProfilingGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeGuruProfiler.ProfilingGroup.AgentPermissionsProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeGuruProfiler.ProfilingGroup.ChannelProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ProfilingGroup
  = ProfilingGroup {agentPermissions :: (Prelude.Maybe AgentPermissionsProperty),
                    anomalyDetectionNotificationConfiguration :: (Prelude.Maybe [ChannelProperty]),
                    computePlatform :: (Prelude.Maybe (Value Prelude.Text)),
                    profilingGroupName :: (Value Prelude.Text),
                    tags :: (Prelude.Maybe [Tag])}
mkProfilingGroup :: Value Prelude.Text -> ProfilingGroup
mkProfilingGroup profilingGroupName
  = ProfilingGroup
      {profilingGroupName = profilingGroupName,
       agentPermissions = Prelude.Nothing,
       anomalyDetectionNotificationConfiguration = Prelude.Nothing,
       computePlatform = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ProfilingGroup where
  toResourceProperties ProfilingGroup {..}
    = ResourceProperties
        {awsType = "AWS::CodeGuruProfiler::ProfilingGroup",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProfilingGroupName" JSON..= profilingGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "AgentPermissions" Prelude.<$> agentPermissions,
                               (JSON..=) "AnomalyDetectionNotificationConfiguration"
                                 Prelude.<$> anomalyDetectionNotificationConfiguration,
                               (JSON..=) "ComputePlatform" Prelude.<$> computePlatform,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ProfilingGroup where
  toJSON ProfilingGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProfilingGroupName" JSON..= profilingGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "AgentPermissions" Prelude.<$> agentPermissions,
                  (JSON..=) "AnomalyDetectionNotificationConfiguration"
                    Prelude.<$> anomalyDetectionNotificationConfiguration,
                  (JSON..=) "ComputePlatform" Prelude.<$> computePlatform,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AgentPermissions" ProfilingGroup where
  type PropertyType "AgentPermissions" ProfilingGroup = AgentPermissionsProperty
  set newValue ProfilingGroup {..}
    = ProfilingGroup {agentPermissions = Prelude.pure newValue, ..}
instance Property "AnomalyDetectionNotificationConfiguration" ProfilingGroup where
  type PropertyType "AnomalyDetectionNotificationConfiguration" ProfilingGroup = [ChannelProperty]
  set newValue ProfilingGroup {..}
    = ProfilingGroup
        {anomalyDetectionNotificationConfiguration = Prelude.pure newValue,
         ..}
instance Property "ComputePlatform" ProfilingGroup where
  type PropertyType "ComputePlatform" ProfilingGroup = Value Prelude.Text
  set newValue ProfilingGroup {..}
    = ProfilingGroup {computePlatform = Prelude.pure newValue, ..}
instance Property "ProfilingGroupName" ProfilingGroup where
  type PropertyType "ProfilingGroupName" ProfilingGroup = Value Prelude.Text
  set newValue ProfilingGroup {..}
    = ProfilingGroup {profilingGroupName = newValue, ..}
instance Property "Tags" ProfilingGroup where
  type PropertyType "Tags" ProfilingGroup = [Tag]
  set newValue ProfilingGroup {..}
    = ProfilingGroup {tags = Prelude.pure newValue, ..}