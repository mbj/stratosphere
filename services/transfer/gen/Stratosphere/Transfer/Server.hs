module Stratosphere.Transfer.Server (
        module Exports, Server(..), mkServer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Server.EndpointDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Server.IdentityProviderDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Server.ProtocolDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Server.S3StorageOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.Transfer.Server.WorkflowDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Server
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html>
    Server {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-certificate>
            certificate :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-domain>
            domain :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-endpointdetails>
            endpointDetails :: (Prelude.Maybe EndpointDetailsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-endpointtype>
            endpointType :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-identityproviderdetails>
            identityProviderDetails :: (Prelude.Maybe IdentityProviderDetailsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-identityprovidertype>
            identityProviderType :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-loggingrole>
            loggingRole :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-postauthenticationloginbanner>
            postAuthenticationLoginBanner :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-preauthenticationloginbanner>
            preAuthenticationLoginBanner :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-protocoldetails>
            protocolDetails :: (Prelude.Maybe ProtocolDetailsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-protocols>
            protocols :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-s3storageoptions>
            s3StorageOptions :: (Prelude.Maybe S3StorageOptionsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-securitypolicyname>
            securityPolicyName :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-structuredlogdestinations>
            structuredLogDestinations :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-tags>
            tags :: (Prelude.Maybe [Tag]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-workflowdetails>
            workflowDetails :: (Prelude.Maybe WorkflowDetailsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServer :: Server
mkServer
  = Server
      {haddock_workaround_ = (), certificate = Prelude.Nothing,
       domain = Prelude.Nothing, endpointDetails = Prelude.Nothing,
       endpointType = Prelude.Nothing,
       identityProviderDetails = Prelude.Nothing,
       identityProviderType = Prelude.Nothing,
       loggingRole = Prelude.Nothing,
       postAuthenticationLoginBanner = Prelude.Nothing,
       preAuthenticationLoginBanner = Prelude.Nothing,
       protocolDetails = Prelude.Nothing, protocols = Prelude.Nothing,
       s3StorageOptions = Prelude.Nothing,
       securityPolicyName = Prelude.Nothing,
       structuredLogDestinations = Prelude.Nothing,
       tags = Prelude.Nothing, workflowDetails = Prelude.Nothing}
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
                            (JSON..=) "S3StorageOptions" Prelude.<$> s3StorageOptions,
                            (JSON..=) "SecurityPolicyName" Prelude.<$> securityPolicyName,
                            (JSON..=) "StructuredLogDestinations"
                              Prelude.<$> structuredLogDestinations,
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
               (JSON..=) "S3StorageOptions" Prelude.<$> s3StorageOptions,
               (JSON..=) "SecurityPolicyName" Prelude.<$> securityPolicyName,
               (JSON..=) "StructuredLogDestinations"
                 Prelude.<$> structuredLogDestinations,
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
  type PropertyType "Protocols" Server = ValueList Prelude.Text
  set newValue Server {..}
    = Server {protocols = Prelude.pure newValue, ..}
instance Property "S3StorageOptions" Server where
  type PropertyType "S3StorageOptions" Server = S3StorageOptionsProperty
  set newValue Server {..}
    = Server {s3StorageOptions = Prelude.pure newValue, ..}
instance Property "SecurityPolicyName" Server where
  type PropertyType "SecurityPolicyName" Server = Value Prelude.Text
  set newValue Server {..}
    = Server {securityPolicyName = Prelude.pure newValue, ..}
instance Property "StructuredLogDestinations" Server where
  type PropertyType "StructuredLogDestinations" Server = ValueList Prelude.Text
  set newValue Server {..}
    = Server {structuredLogDestinations = Prelude.pure newValue, ..}
instance Property "Tags" Server where
  type PropertyType "Tags" Server = [Tag]
  set newValue Server {..}
    = Server {tags = Prelude.pure newValue, ..}
instance Property "WorkflowDetails" Server where
  type PropertyType "WorkflowDetails" Server = WorkflowDetailsProperty
  set newValue Server {..}
    = Server {workflowDetails = Prelude.pure newValue, ..}