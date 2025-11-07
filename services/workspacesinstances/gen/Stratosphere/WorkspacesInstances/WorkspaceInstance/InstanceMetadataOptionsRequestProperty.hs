module Stratosphere.WorkspacesInstances.WorkspaceInstance.InstanceMetadataOptionsRequestProperty (
        InstanceMetadataOptionsRequestProperty(..),
        mkInstanceMetadataOptionsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceMetadataOptionsRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancemetadataoptionsrequest.html>
    InstanceMetadataOptionsRequestProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancemetadataoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-instancemetadataoptionsrequest-httpendpoint>
                                            httpEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancemetadataoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-instancemetadataoptionsrequest-httpprotocolipv6>
                                            httpProtocolIpv6 :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancemetadataoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-instancemetadataoptionsrequest-httpputresponsehoplimit>
                                            httpPutResponseHopLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancemetadataoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-instancemetadataoptionsrequest-httptokens>
                                            httpTokens :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancemetadataoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-instancemetadataoptionsrequest-instancemetadatatags>
                                            instanceMetadataTags :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceMetadataOptionsRequestProperty ::
  InstanceMetadataOptionsRequestProperty
mkInstanceMetadataOptionsRequestProperty
  = InstanceMetadataOptionsRequestProperty
      {haddock_workaround_ = (), httpEndpoint = Prelude.Nothing,
       httpProtocolIpv6 = Prelude.Nothing,
       httpPutResponseHopLimit = Prelude.Nothing,
       httpTokens = Prelude.Nothing,
       instanceMetadataTags = Prelude.Nothing}
instance ToResourceProperties InstanceMetadataOptionsRequestProperty where
  toResourceProperties InstanceMetadataOptionsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.InstanceMetadataOptionsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HttpEndpoint" Prelude.<$> httpEndpoint,
                            (JSON..=) "HttpProtocolIpv6" Prelude.<$> httpProtocolIpv6,
                            (JSON..=) "HttpPutResponseHopLimit"
                              Prelude.<$> httpPutResponseHopLimit,
                            (JSON..=) "HttpTokens" Prelude.<$> httpTokens,
                            (JSON..=) "InstanceMetadataTags"
                              Prelude.<$> instanceMetadataTags])}
instance JSON.ToJSON InstanceMetadataOptionsRequestProperty where
  toJSON InstanceMetadataOptionsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HttpEndpoint" Prelude.<$> httpEndpoint,
               (JSON..=) "HttpProtocolIpv6" Prelude.<$> httpProtocolIpv6,
               (JSON..=) "HttpPutResponseHopLimit"
                 Prelude.<$> httpPutResponseHopLimit,
               (JSON..=) "HttpTokens" Prelude.<$> httpTokens,
               (JSON..=) "InstanceMetadataTags"
                 Prelude.<$> instanceMetadataTags]))
instance Property "HttpEndpoint" InstanceMetadataOptionsRequestProperty where
  type PropertyType "HttpEndpoint" InstanceMetadataOptionsRequestProperty = Value Prelude.Text
  set newValue InstanceMetadataOptionsRequestProperty {..}
    = InstanceMetadataOptionsRequestProperty
        {httpEndpoint = Prelude.pure newValue, ..}
instance Property "HttpProtocolIpv6" InstanceMetadataOptionsRequestProperty where
  type PropertyType "HttpProtocolIpv6" InstanceMetadataOptionsRequestProperty = Value Prelude.Text
  set newValue InstanceMetadataOptionsRequestProperty {..}
    = InstanceMetadataOptionsRequestProperty
        {httpProtocolIpv6 = Prelude.pure newValue, ..}
instance Property "HttpPutResponseHopLimit" InstanceMetadataOptionsRequestProperty where
  type PropertyType "HttpPutResponseHopLimit" InstanceMetadataOptionsRequestProperty = Value Prelude.Integer
  set newValue InstanceMetadataOptionsRequestProperty {..}
    = InstanceMetadataOptionsRequestProperty
        {httpPutResponseHopLimit = Prelude.pure newValue, ..}
instance Property "HttpTokens" InstanceMetadataOptionsRequestProperty where
  type PropertyType "HttpTokens" InstanceMetadataOptionsRequestProperty = Value Prelude.Text
  set newValue InstanceMetadataOptionsRequestProperty {..}
    = InstanceMetadataOptionsRequestProperty
        {httpTokens = Prelude.pure newValue, ..}
instance Property "InstanceMetadataTags" InstanceMetadataOptionsRequestProperty where
  type PropertyType "InstanceMetadataTags" InstanceMetadataOptionsRequestProperty = Value Prelude.Text
  set newValue InstanceMetadataOptionsRequestProperty {..}
    = InstanceMetadataOptionsRequestProperty
        {instanceMetadataTags = Prelude.pure newValue, ..}