module Stratosphere.APS.Workspace.WorkspaceConfigurationProperty (
        module Exports, WorkspaceConfigurationProperty(..),
        mkWorkspaceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.Workspace.LimitsPerLabelSetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkspaceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-workspaceconfiguration.html>
    WorkspaceConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-workspaceconfiguration.html#cfn-aps-workspace-workspaceconfiguration-limitsperlabelsets>
                                    limitsPerLabelSets :: (Prelude.Maybe [LimitsPerLabelSetProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-workspaceconfiguration.html#cfn-aps-workspace-workspaceconfiguration-retentionperiodindays>
                                    retentionPeriodInDays :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkspaceConfigurationProperty :: WorkspaceConfigurationProperty
mkWorkspaceConfigurationProperty
  = WorkspaceConfigurationProperty
      {haddock_workaround_ = (), limitsPerLabelSets = Prelude.Nothing,
       retentionPeriodInDays = Prelude.Nothing}
instance ToResourceProperties WorkspaceConfigurationProperty where
  toResourceProperties WorkspaceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Workspace.WorkspaceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LimitsPerLabelSets" Prelude.<$> limitsPerLabelSets,
                            (JSON..=) "RetentionPeriodInDays"
                              Prelude.<$> retentionPeriodInDays])}
instance JSON.ToJSON WorkspaceConfigurationProperty where
  toJSON WorkspaceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LimitsPerLabelSets" Prelude.<$> limitsPerLabelSets,
               (JSON..=) "RetentionPeriodInDays"
                 Prelude.<$> retentionPeriodInDays]))
instance Property "LimitsPerLabelSets" WorkspaceConfigurationProperty where
  type PropertyType "LimitsPerLabelSets" WorkspaceConfigurationProperty = [LimitsPerLabelSetProperty]
  set newValue WorkspaceConfigurationProperty {..}
    = WorkspaceConfigurationProperty
        {limitsPerLabelSets = Prelude.pure newValue, ..}
instance Property "RetentionPeriodInDays" WorkspaceConfigurationProperty where
  type PropertyType "RetentionPeriodInDays" WorkspaceConfigurationProperty = Value Prelude.Integer
  set newValue WorkspaceConfigurationProperty {..}
    = WorkspaceConfigurationProperty
        {retentionPeriodInDays = Prelude.pure newValue, ..}