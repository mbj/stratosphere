module Stratosphere.WorkspacesInstances.WorkspaceInstance.PrivateDnsNameOptionsRequestProperty (
        PrivateDnsNameOptionsRequestProperty(..),
        mkPrivateDnsNameOptionsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateDnsNameOptionsRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-privatednsnameoptionsrequest.html>
    PrivateDnsNameOptionsRequestProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-privatednsnameoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-privatednsnameoptionsrequest-enableresourcenamednsaaaarecord>
                                          enableResourceNameDnsAAAARecord :: (Prelude.Maybe (Value Prelude.Bool)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-privatednsnameoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-privatednsnameoptionsrequest-enableresourcenamednsarecord>
                                          enableResourceNameDnsARecord :: (Prelude.Maybe (Value Prelude.Bool)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-privatednsnameoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-privatednsnameoptionsrequest-hostnametype>
                                          hostnameType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateDnsNameOptionsRequestProperty ::
  PrivateDnsNameOptionsRequestProperty
mkPrivateDnsNameOptionsRequestProperty
  = PrivateDnsNameOptionsRequestProperty
      {haddock_workaround_ = (),
       enableResourceNameDnsAAAARecord = Prelude.Nothing,
       enableResourceNameDnsARecord = Prelude.Nothing,
       hostnameType = Prelude.Nothing}
instance ToResourceProperties PrivateDnsNameOptionsRequestProperty where
  toResourceProperties PrivateDnsNameOptionsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.PrivateDnsNameOptionsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableResourceNameDnsAAAARecord"
                              Prelude.<$> enableResourceNameDnsAAAARecord,
                            (JSON..=) "EnableResourceNameDnsARecord"
                              Prelude.<$> enableResourceNameDnsARecord,
                            (JSON..=) "HostnameType" Prelude.<$> hostnameType])}
instance JSON.ToJSON PrivateDnsNameOptionsRequestProperty where
  toJSON PrivateDnsNameOptionsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableResourceNameDnsAAAARecord"
                 Prelude.<$> enableResourceNameDnsAAAARecord,
               (JSON..=) "EnableResourceNameDnsARecord"
                 Prelude.<$> enableResourceNameDnsARecord,
               (JSON..=) "HostnameType" Prelude.<$> hostnameType]))
instance Property "EnableResourceNameDnsAAAARecord" PrivateDnsNameOptionsRequestProperty where
  type PropertyType "EnableResourceNameDnsAAAARecord" PrivateDnsNameOptionsRequestProperty = Value Prelude.Bool
  set newValue PrivateDnsNameOptionsRequestProperty {..}
    = PrivateDnsNameOptionsRequestProperty
        {enableResourceNameDnsAAAARecord = Prelude.pure newValue, ..}
instance Property "EnableResourceNameDnsARecord" PrivateDnsNameOptionsRequestProperty where
  type PropertyType "EnableResourceNameDnsARecord" PrivateDnsNameOptionsRequestProperty = Value Prelude.Bool
  set newValue PrivateDnsNameOptionsRequestProperty {..}
    = PrivateDnsNameOptionsRequestProperty
        {enableResourceNameDnsARecord = Prelude.pure newValue, ..}
instance Property "HostnameType" PrivateDnsNameOptionsRequestProperty where
  type PropertyType "HostnameType" PrivateDnsNameOptionsRequestProperty = Value Prelude.Text
  set newValue PrivateDnsNameOptionsRequestProperty {..}
    = PrivateDnsNameOptionsRequestProperty
        {hostnameType = Prelude.pure newValue, ..}