module Stratosphere.APS.Workspace (
        module Exports, Workspace(..), mkWorkspace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.Workspace.LoggingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Workspace
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-workspace.html>
    Workspace {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-workspace.html#cfn-aps-workspace-alertmanagerdefinition>
               alertManagerDefinition :: (Prelude.Maybe (Value Prelude.Text)),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-workspace.html#cfn-aps-workspace-alias>
               alias :: (Prelude.Maybe (Value Prelude.Text)),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-workspace.html#cfn-aps-workspace-kmskeyarn>
               kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-workspace.html#cfn-aps-workspace-loggingconfiguration>
               loggingConfiguration :: (Prelude.Maybe LoggingConfigurationProperty),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-workspace.html#cfn-aps-workspace-tags>
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkspace :: Workspace
mkWorkspace
  = Workspace
      {alertManagerDefinition = Prelude.Nothing, alias = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing,
       loggingConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Workspace where
  toResourceProperties Workspace {..}
    = ResourceProperties
        {awsType = "AWS::APS::Workspace", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AlertManagerDefinition"
                              Prelude.<$> alertManagerDefinition,
                            (JSON..=) "Alias" Prelude.<$> alias,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                            (JSON..=) "LoggingConfiguration" Prelude.<$> loggingConfiguration,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Workspace where
  toJSON Workspace {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AlertManagerDefinition"
                 Prelude.<$> alertManagerDefinition,
               (JSON..=) "Alias" Prelude.<$> alias,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
               (JSON..=) "LoggingConfiguration" Prelude.<$> loggingConfiguration,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AlertManagerDefinition" Workspace where
  type PropertyType "AlertManagerDefinition" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {alertManagerDefinition = Prelude.pure newValue, ..}
instance Property "Alias" Workspace where
  type PropertyType "Alias" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {alias = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" Workspace where
  type PropertyType "KmsKeyArn" Workspace = Value Prelude.Text
  set newValue Workspace {..}
    = Workspace {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "LoggingConfiguration" Workspace where
  type PropertyType "LoggingConfiguration" Workspace = LoggingConfigurationProperty
  set newValue Workspace {..}
    = Workspace {loggingConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" Workspace where
  type PropertyType "Tags" Workspace = [Tag]
  set newValue Workspace {..}
    = Workspace {tags = Prelude.pure newValue, ..}