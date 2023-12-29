module Stratosphere.Transfer.Server (
        module Exports, Server(..), mkServer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Server.EndpointDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Server.IdentityProviderDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Server.ProtocolProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Server.ProtocolDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Server.WorkflowDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Server
  = Server {certificate :: (Prelude.Maybe (Value Prelude.Text)),
            domain :: (Prelude.Maybe (Value Prelude.Text)),
            endpointDetails :: (Prelude.Maybe EndpointDetailsProperty),
            endpointType :: (Prelude.Maybe (Value Prelude.Text)),
            identityProviderDetails :: (Prelude.Maybe IdentityProviderDetailsProperty),
            identityProviderType :: (Prelude.Maybe (Value Prelude.Text)),
            loggingRole :: (Prelude.Maybe (Value Prelude.Text)),
            postAuthenticationLoginBanner :: (Prelude.Maybe (Value Prelude.Text)),
            preAuthenticationLoginBanner :: (Prelude.Maybe (Value Prelude.Text)),
            protocolDetails :: (Prelude.Maybe ProtocolDetailsProperty),
            protocols :: (Prelude.Maybe [ProtocolProperty]),
            securityPolicyName :: (Prelude.Maybe (Value Prelude.Text)),
            tags :: (Prelude.Maybe [Tag]),
            workflowDetails :: (Prelude.Maybe WorkflowDetailsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServer :: Server
mkServer
  = Server
      {certificate = Prelude.Nothing, domain = Prelude.Nothing,
       endpointDetails = Prelude.Nothing, endpointType = Prelude.Nothing,
       identityProviderDetails = Prelude.Nothing,
       identityProviderType = Prelude.Nothing,
       loggingRole = Prelude.Nothing,
       postAuthenticationLoginBanner = Prelude.Nothing,
       preAuthenticationLoginBanner = Prelude.Nothing,
       protocolDetails = Prelude.Nothing, protocols = Prelude.Nothing,
       securityPolicyName = Prelude.Nothing, tags = Prelude.Nothing,
       workflowDetails = Prelude.Nothing}
instance ToResourceProperties Server where
  toResourceProperties Server {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Server", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Certificate" Prelude.<$> certificate,
                            (JSON..=) "Domain" Prelude.<$> domain,
                            (JSON..=) "EndpointDetails" Prelude.<$> endpointDetails,
                            (JSON..=) "EndpointType" Prelude.<$> endpointType,
                            (JSON..=) "IdentityProviderDetails"
                              Prelude.<$> identityProviderDetails,
                            (JSON..=) "IdentityProviderType" Prelude.<$> identityProviderType,
                            (JSON..=) "LoggingRole" Prelude.<$> loggingRole,
                            (JSON..=) "PostAuthenticationLoginBanner"
                              Prelude.<$> postAuthenticationLoginBanner,
                            (JSON..=) "PreAuthenticationLoginBanner"
                              Prelude.<$> preAuthenticationLoginBanner,
                            (JSON..=) "ProtocolDetails" Prelude.<$> protocolDetails,
                            (JSON..=) "Protocols" Prelude.<$> protocols,
                            (JSON..=) "SecurityPolicyName" Prelude.<$> securityPolicyName,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "WorkflowDetails" Prelude.<$> workflowDetails])}
instance JSON.ToJSON Server where
  toJSON Server {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Certificate" Prelude.<$> certificate,
               (JSON..=) "Domain" Prelude.<$> domain,
               (JSON..=) "EndpointDetails" Prelude.<$> endpointDetails,
               (JSON..=) "EndpointType" Prelude.<$> endpointType,
               (JSON..=) "IdentityProviderDetails"
                 Prelude.<$> identityProviderDetails,
               (JSON..=) "IdentityProviderType" Prelude.<$> identityProviderType,
               (JSON..=) "LoggingRole" Prelude.<$> loggingRole,
               (JSON..=) "PostAuthenticationLoginBanner"
                 Prelude.<$> postAuthenticationLoginBanner,
               (JSON..=) "PreAuthenticationLoginBanner"
                 Prelude.<$> preAuthenticationLoginBanner,
               (JSON..=) "ProtocolDetails" Prelude.<$> protocolDetails,
               (JSON..=) "Protocols" Prelude.<$> protocols,
               (JSON..=) "SecurityPolicyName" Prelude.<$> securityPolicyName,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "WorkflowDetails" Prelude.<$> workflowDetails]))
instance Property "Certificate" Server where
  type PropertyType "Certificate" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {certificate = Prelude.pure newValue, ..}
instance Property "Domain" Server where
  type PropertyType "Domain" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {domain = Prelude.pure newValue, ..}
instance Property "EndpointDetails" Server where
  type PropertyType "EndpointDetails" Server = EndpointDetailsProperty
  set newValue Server {..}
    = Server {endpointDetails = Prelude.pure newValue, ..}
instance Property "EndpointType" Server where
  type PropertyType "EndpointType" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {endpointType = Prelude.pure newValue, ..}
instance Property "IdentityProviderDetails" Server where
  type PropertyType "IdentityProviderDetails" Server = IdentityProviderDetailsProperty
  set newValue Server {..}
    = Server {identityProviderDetails = Prelude.pure newValue, ..}
instance Property "IdentityProviderType" Server where
  type PropertyType "IdentityProviderType" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {identityProviderType = Prelude.pure newValue, ..}
instance Property "LoggingRole" Server where
  type PropertyType "LoggingRole" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {loggingRole = Prelude.pure newValue, ..}
instance Property "PostAuthenticationLoginBanner" Server where
  type PropertyType "PostAuthenticationLoginBanner" Server = Value Prelude.Text
  set newValue Server {..}
    = Server
        {postAuthenticationLoginBanner = Prelude.pure newValue, ..}
instance Property "PreAuthenticationLoginBanner" Server where
  type PropertyType "PreAuthenticationLoginBanner" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {preAuthenticationLoginBanner = Prelude.pure newValue, ..}
instance Property "ProtocolDetails" Server where
  type PropertyType "ProtocolDetails" Server = ProtocolDetailsProperty
  set newValue Server {..}
    = Server {protocolDetails = Prelude.pure newValue, ..}
instance Property "Protocols" Server where
  type PropertyType "Protocols" Server = [ProtocolProperty]
  set newValue Server {..}
    = Server {protocols = Prelude.pure newValue, ..}
instance Property "SecurityPolicyName" Server where
  type PropertyType "SecurityPolicyName" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {securityPolicyName = Prelude.pure newValue, ..}
instance Property "Tags" Server where
  type PropertyType "Tags" Server = [Tag]
  set newValue Server {..}
    = Server {tags = Prelude.pure newValue, ..}
instance Property "WorkflowDetails" Server where
  type PropertyType "WorkflowDetails" Server = WorkflowDetailsProperty
  set newValue Server {..}
    = Server {workflowDetails = Prelude.pure newValue, ..}