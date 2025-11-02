module Stratosphere.Redshift.ScheduledAction.ScheduledActionTypeProperty (
        module Exports, ScheduledActionTypeProperty(..),
        mkScheduledActionTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Redshift.ScheduledAction.PauseClusterMessageProperty as Exports
import {-# SOURCE #-} Stratosphere.Redshift.ScheduledAction.ResizeClusterMessageProperty as Exports
import {-# SOURCE #-} Stratosphere.Redshift.ScheduledAction.ResumeClusterMessageProperty as Exports
import Stratosphere.ResourceProperties
data ScheduledActionTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-scheduledactiontype.html>
    ScheduledActionTypeProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-scheduledactiontype.html#cfn-redshift-scheduledaction-scheduledactiontype-pausecluster>
                                 pauseCluster :: (Prelude.Maybe PauseClusterMessageProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-scheduledactiontype.html#cfn-redshift-scheduledaction-scheduledactiontype-resizecluster>
                                 resizeCluster :: (Prelude.Maybe ResizeClusterMessageProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-scheduledactiontype.html#cfn-redshift-scheduledaction-scheduledactiontype-resumecluster>
                                 resumeCluster :: (Prelude.Maybe ResumeClusterMessageProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduledActionTypeProperty :: ScheduledActionTypeProperty
mkScheduledActionTypeProperty
  = ScheduledActionTypeProperty
      {haddock_workaround_ = (), pauseCluster = Prelude.Nothing,
       resizeCluster = Prelude.Nothing, resumeCluster = Prelude.Nothing}
instance ToResourceProperties ScheduledActionTypeProperty where
  toResourceProperties ScheduledActionTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::ScheduledAction.ScheduledActionType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PauseCluster" Prelude.<$> pauseCluster,
                            (JSON..=) "ResizeCluster" Prelude.<$> resizeCluster,
                            (JSON..=) "ResumeCluster" Prelude.<$> resumeCluster])}
instance JSON.ToJSON ScheduledActionTypeProperty where
  toJSON ScheduledActionTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PauseCluster" Prelude.<$> pauseCluster,
               (JSON..=) "ResizeCluster" Prelude.<$> resizeCluster,
               (JSON..=) "ResumeCluster" Prelude.<$> resumeCluster]))
instance Property "PauseCluster" ScheduledActionTypeProperty where
  type PropertyType "PauseCluster" ScheduledActionTypeProperty = PauseClusterMessageProperty
  set newValue ScheduledActionTypeProperty {..}
    = ScheduledActionTypeProperty
        {pauseCluster = Prelude.pure newValue, ..}
instance Property "ResizeCluster" ScheduledActionTypeProperty where
  type PropertyType "ResizeCluster" ScheduledActionTypeProperty = ResizeClusterMessageProperty
  set newValue ScheduledActionTypeProperty {..}
    = ScheduledActionTypeProperty
        {resizeCluster = Prelude.pure newValue, ..}
instance Property "ResumeCluster" ScheduledActionTypeProperty where
  type PropertyType "ResumeCluster" ScheduledActionTypeProperty = ResumeClusterMessageProperty
  set newValue ScheduledActionTypeProperty {..}
    = ScheduledActionTypeProperty
        {resumeCluster = Prelude.pure newValue, ..}