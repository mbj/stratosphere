module Stratosphere.AppFlow.ConnectorProfile.SAPODataConnectorProfilePropertiesProperty (
        module Exports, SAPODataConnectorProfilePropertiesProperty(..),
        mkSAPODataConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.OAuthPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SAPODataConnectorProfilePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-sapodataconnectorprofileproperties.html>
    SAPODataConnectorProfilePropertiesProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-sapodataconnectorprofileproperties.html#cfn-appflow-connectorprofile-sapodataconnectorprofileproperties-applicationhosturl>
                                                applicationHostUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-sapodataconnectorprofileproperties.html#cfn-appflow-connectorprofile-sapodataconnectorprofileproperties-applicationservicepath>
                                                applicationServicePath :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-sapodataconnectorprofileproperties.html#cfn-appflow-connectorprofile-sapodataconnectorprofileproperties-clientnumber>
                                                clientNumber :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-sapodataconnectorprofileproperties.html#cfn-appflow-connectorprofile-sapodataconnectorprofileproperties-disablesso>
                                                disableSSO :: (Prelude.Maybe (Value Prelude.Bool)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-sapodataconnectorprofileproperties.html#cfn-appflow-connectorprofile-sapodataconnectorprofileproperties-logonlanguage>
                                                logonLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-sapodataconnectorprofileproperties.html#cfn-appflow-connectorprofile-sapodataconnectorprofileproperties-oauthproperties>
                                                oAuthProperties :: (Prelude.Maybe OAuthPropertiesProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-sapodataconnectorprofileproperties.html#cfn-appflow-connectorprofile-sapodataconnectorprofileproperties-portnumber>
                                                portNumber :: (Prelude.Maybe (Value Prelude.Integer)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-sapodataconnectorprofileproperties.html#cfn-appflow-connectorprofile-sapodataconnectorprofileproperties-privatelinkservicename>
                                                privateLinkServiceName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSAPODataConnectorProfilePropertiesProperty ::
  SAPODataConnectorProfilePropertiesProperty
mkSAPODataConnectorProfilePropertiesProperty
  = SAPODataConnectorProfilePropertiesProperty
      {haddock_workaround_ = (), applicationHostUrl = Prelude.Nothing,
       applicationServicePath = Prelude.Nothing,
       clientNumber = Prelude.Nothing, disableSSO = Prelude.Nothing,
       logonLanguage = Prelude.Nothing, oAuthProperties = Prelude.Nothing,
       portNumber = Prelude.Nothing,
       privateLinkServiceName = Prelude.Nothing}
instance ToResourceProperties SAPODataConnectorProfilePropertiesProperty where
  toResourceProperties
    SAPODataConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.SAPODataConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplicationHostUrl" Prelude.<$> applicationHostUrl,
                            (JSON..=) "ApplicationServicePath"
                              Prelude.<$> applicationServicePath,
                            (JSON..=) "ClientNumber" Prelude.<$> clientNumber,
                            (JSON..=) "DisableSSO" Prelude.<$> disableSSO,
                            (JSON..=) "LogonLanguage" Prelude.<$> logonLanguage,
                            (JSON..=) "OAuthProperties" Prelude.<$> oAuthProperties,
                            (JSON..=) "PortNumber" Prelude.<$> portNumber,
                            (JSON..=) "PrivateLinkServiceName"
                              Prelude.<$> privateLinkServiceName])}
instance JSON.ToJSON SAPODataConnectorProfilePropertiesProperty where
  toJSON SAPODataConnectorProfilePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplicationHostUrl" Prelude.<$> applicationHostUrl,
               (JSON..=) "ApplicationServicePath"
                 Prelude.<$> applicationServicePath,
               (JSON..=) "ClientNumber" Prelude.<$> clientNumber,
               (JSON..=) "DisableSSO" Prelude.<$> disableSSO,
               (JSON..=) "LogonLanguage" Prelude.<$> logonLanguage,
               (JSON..=) "OAuthProperties" Prelude.<$> oAuthProperties,
               (JSON..=) "PortNumber" Prelude.<$> portNumber,
               (JSON..=) "PrivateLinkServiceName"
                 Prelude.<$> privateLinkServiceName]))
instance Property "ApplicationHostUrl" SAPODataConnectorProfilePropertiesProperty where
  type PropertyType "ApplicationHostUrl" SAPODataConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SAPODataConnectorProfilePropertiesProperty {..}
    = SAPODataConnectorProfilePropertiesProperty
        {applicationHostUrl = Prelude.pure newValue, ..}
instance Property "ApplicationServicePath" SAPODataConnectorProfilePropertiesProperty where
  type PropertyType "ApplicationServicePath" SAPODataConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SAPODataConnectorProfilePropertiesProperty {..}
    = SAPODataConnectorProfilePropertiesProperty
        {applicationServicePath = Prelude.pure newValue, ..}
instance Property "ClientNumber" SAPODataConnectorProfilePropertiesProperty where
  type PropertyType "ClientNumber" SAPODataConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SAPODataConnectorProfilePropertiesProperty {..}
    = SAPODataConnectorProfilePropertiesProperty
        {clientNumber = Prelude.pure newValue, ..}
instance Property "DisableSSO" SAPODataConnectorProfilePropertiesProperty where
  type PropertyType "DisableSSO" SAPODataConnectorProfilePropertiesProperty = Value Prelude.Bool
  set newValue SAPODataConnectorProfilePropertiesProperty {..}
    = SAPODataConnectorProfilePropertiesProperty
        {disableSSO = Prelude.pure newValue, ..}
instance Property "LogonLanguage" SAPODataConnectorProfilePropertiesProperty where
  type PropertyType "LogonLanguage" SAPODataConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SAPODataConnectorProfilePropertiesProperty {..}
    = SAPODataConnectorProfilePropertiesProperty
        {logonLanguage = Prelude.pure newValue, ..}
instance Property "OAuthProperties" SAPODataConnectorProfilePropertiesProperty where
  type PropertyType "OAuthProperties" SAPODataConnectorProfilePropertiesProperty = OAuthPropertiesProperty
  set newValue SAPODataConnectorProfilePropertiesProperty {..}
    = SAPODataConnectorProfilePropertiesProperty
        {oAuthProperties = Prelude.pure newValue, ..}
instance Property "PortNumber" SAPODataConnectorProfilePropertiesProperty where
  type PropertyType "PortNumber" SAPODataConnectorProfilePropertiesProperty = Value Prelude.Integer
  set newValue SAPODataConnectorProfilePropertiesProperty {..}
    = SAPODataConnectorProfilePropertiesProperty
        {portNumber = Prelude.pure newValue, ..}
instance Property "PrivateLinkServiceName" SAPODataConnectorProfilePropertiesProperty where
  type PropertyType "PrivateLinkServiceName" SAPODataConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SAPODataConnectorProfilePropertiesProperty {..}
    = SAPODataConnectorProfilePropertiesProperty
        {privateLinkServiceName = Prelude.pure newValue, ..}