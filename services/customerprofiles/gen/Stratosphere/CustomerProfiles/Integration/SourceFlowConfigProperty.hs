module Stratosphere.CustomerProfiles.Integration.SourceFlowConfigProperty (
        module Exports, SourceFlowConfigProperty(..),
        mkSourceFlowConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.IncrementalPullConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.SourceConnectorPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceFlowConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceflowconfig.html>
    SourceFlowConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceflowconfig.html#cfn-customerprofiles-integration-sourceflowconfig-connectorprofilename>
                              connectorProfileName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceflowconfig.html#cfn-customerprofiles-integration-sourceflowconfig-connectortype>
                              connectorType :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceflowconfig.html#cfn-customerprofiles-integration-sourceflowconfig-incrementalpullconfig>
                              incrementalPullConfig :: (Prelude.Maybe IncrementalPullConfigProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceflowconfig.html#cfn-customerprofiles-integration-sourceflowconfig-sourceconnectorproperties>
                              sourceConnectorProperties :: SourceConnectorPropertiesProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceFlowConfigProperty ::
  Value Prelude.Text
  -> SourceConnectorPropertiesProperty -> SourceFlowConfigProperty
mkSourceFlowConfigProperty connectorType sourceConnectorProperties
  = SourceFlowConfigProperty
      {haddock_workaround_ = (), connectorType = connectorType,
       sourceConnectorProperties = sourceConnectorProperties,
       connectorProfileName = Prelude.Nothing,
       incrementalPullConfig = Prelude.Nothing}
instance ToResourceProperties SourceFlowConfigProperty where
  toResourceProperties SourceFlowConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.SourceFlowConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectorType" JSON..= connectorType,
                            "SourceConnectorProperties" JSON..= sourceConnectorProperties]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectorProfileName" Prelude.<$> connectorProfileName,
                               (JSON..=) "IncrementalPullConfig"
                                 Prelude.<$> incrementalPullConfig]))}
instance JSON.ToJSON SourceFlowConfigProperty where
  toJSON SourceFlowConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectorType" JSON..= connectorType,
               "SourceConnectorProperties" JSON..= sourceConnectorProperties]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectorProfileName" Prelude.<$> connectorProfileName,
                  (JSON..=) "IncrementalPullConfig"
                    Prelude.<$> incrementalPullConfig])))
instance Property "ConnectorProfileName" SourceFlowConfigProperty where
  type PropertyType "ConnectorProfileName" SourceFlowConfigProperty = Value Prelude.Text
  set newValue SourceFlowConfigProperty {..}
    = SourceFlowConfigProperty
        {connectorProfileName = Prelude.pure newValue, ..}
instance Property "ConnectorType" SourceFlowConfigProperty where
  type PropertyType "ConnectorType" SourceFlowConfigProperty = Value Prelude.Text
  set newValue SourceFlowConfigProperty {..}
    = SourceFlowConfigProperty {connectorType = newValue, ..}
instance Property "IncrementalPullConfig" SourceFlowConfigProperty where
  type PropertyType "IncrementalPullConfig" SourceFlowConfigProperty = IncrementalPullConfigProperty
  set newValue SourceFlowConfigProperty {..}
    = SourceFlowConfigProperty
        {incrementalPullConfig = Prelude.pure newValue, ..}
instance Property "SourceConnectorProperties" SourceFlowConfigProperty where
  type PropertyType "SourceConnectorProperties" SourceFlowConfigProperty = SourceConnectorPropertiesProperty
  set newValue SourceFlowConfigProperty {..}
    = SourceFlowConfigProperty
        {sourceConnectorProperties = newValue, ..}