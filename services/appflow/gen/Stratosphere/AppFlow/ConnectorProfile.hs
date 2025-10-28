module Stratosphere.AppFlow.ConnectorProfile (
        module Exports, ConnectorProfile(..), mkConnectorProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ConnectorProfileConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectorProfile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connectorprofile.html>
    ConnectorProfile {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connectorprofile.html#cfn-appflow-connectorprofile-connectionmode>
                      connectionMode :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connectorprofile.html#cfn-appflow-connectorprofile-connectorlabel>
                      connectorLabel :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connectorprofile.html#cfn-appflow-connectorprofile-connectorprofileconfig>
                      connectorProfileConfig :: (Prelude.Maybe ConnectorProfileConfigProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connectorprofile.html#cfn-appflow-connectorprofile-connectorprofilename>
                      connectorProfileName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connectorprofile.html#cfn-appflow-connectorprofile-connectortype>
                      connectorType :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connectorprofile.html#cfn-appflow-connectorprofile-kmsarn>
                      kMSArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectorProfile ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ConnectorProfile
mkConnectorProfile
  connectionMode
  connectorProfileName
  connectorType
  = ConnectorProfile
      {haddock_workaround_ = (), connectionMode = connectionMode,
       connectorProfileName = connectorProfileName,
       connectorType = connectorType, connectorLabel = Prelude.Nothing,
       connectorProfileConfig = Prelude.Nothing, kMSArn = Prelude.Nothing}
instance ToResourceProperties ConnectorProfile where
  toResourceProperties ConnectorProfile {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectionMode" JSON..= connectionMode,
                            "ConnectorProfileName" JSON..= connectorProfileName,
                            "ConnectorType" JSON..= connectorType]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectorLabel" Prelude.<$> connectorLabel,
                               (JSON..=) "ConnectorProfileConfig"
                                 Prelude.<$> connectorProfileConfig,
                               (JSON..=) "KMSArn" Prelude.<$> kMSArn]))}
instance JSON.ToJSON ConnectorProfile where
  toJSON ConnectorProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectionMode" JSON..= connectionMode,
               "ConnectorProfileName" JSON..= connectorProfileName,
               "ConnectorType" JSON..= connectorType]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectorLabel" Prelude.<$> connectorLabel,
                  (JSON..=) "ConnectorProfileConfig"
                    Prelude.<$> connectorProfileConfig,
                  (JSON..=) "KMSArn" Prelude.<$> kMSArn])))
instance Property "ConnectionMode" ConnectorProfile where
  type PropertyType "ConnectionMode" ConnectorProfile = Value Prelude.Text
  set newValue ConnectorProfile {..}
    = ConnectorProfile {connectionMode = newValue, ..}
instance Property "ConnectorLabel" ConnectorProfile where
  type PropertyType "ConnectorLabel" ConnectorProfile = Value Prelude.Text
  set newValue ConnectorProfile {..}
    = ConnectorProfile {connectorLabel = Prelude.pure newValue, ..}
instance Property "ConnectorProfileConfig" ConnectorProfile where
  type PropertyType "ConnectorProfileConfig" ConnectorProfile = ConnectorProfileConfigProperty
  set newValue ConnectorProfile {..}
    = ConnectorProfile
        {connectorProfileConfig = Prelude.pure newValue, ..}
instance Property "ConnectorProfileName" ConnectorProfile where
  type PropertyType "ConnectorProfileName" ConnectorProfile = Value Prelude.Text
  set newValue ConnectorProfile {..}
    = ConnectorProfile {connectorProfileName = newValue, ..}
instance Property "ConnectorType" ConnectorProfile where
  type PropertyType "ConnectorType" ConnectorProfile = Value Prelude.Text
  set newValue ConnectorProfile {..}
    = ConnectorProfile {connectorType = newValue, ..}
instance Property "KMSArn" ConnectorProfile where
  type PropertyType "KMSArn" ConnectorProfile = Value Prelude.Text
  set newValue ConnectorProfile {..}
    = ConnectorProfile {kMSArn = Prelude.pure newValue, ..}