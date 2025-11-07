module Stratosphere.RTBFabric.ResponderGateway.EksEndpointsConfigurationProperty (
        EksEndpointsConfigurationProperty(..),
        mkEksEndpointsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksEndpointsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-eksendpointsconfiguration.html>
    EksEndpointsConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-eksendpointsconfiguration.html#cfn-rtbfabric-respondergateway-eksendpointsconfiguration-clusterapiservercacertificatechain>
                                       clusterApiServerCaCertificateChain :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-eksendpointsconfiguration.html#cfn-rtbfabric-respondergateway-eksendpointsconfiguration-clusterapiserverendpointuri>
                                       clusterApiServerEndpointUri :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-eksendpointsconfiguration.html#cfn-rtbfabric-respondergateway-eksendpointsconfiguration-clustername>
                                       clusterName :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-eksendpointsconfiguration.html#cfn-rtbfabric-respondergateway-eksendpointsconfiguration-endpointsresourcename>
                                       endpointsResourceName :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-eksendpointsconfiguration.html#cfn-rtbfabric-respondergateway-eksendpointsconfiguration-endpointsresourcenamespace>
                                       endpointsResourceNamespace :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-eksendpointsconfiguration.html#cfn-rtbfabric-respondergateway-eksendpointsconfiguration-rolearn>
                                       roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksEndpointsConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text -> EksEndpointsConfigurationProperty
mkEksEndpointsConfigurationProperty
  clusterApiServerCaCertificateChain
  clusterApiServerEndpointUri
  clusterName
  endpointsResourceName
  endpointsResourceNamespace
  roleArn
  = EksEndpointsConfigurationProperty
      {haddock_workaround_ = (),
       clusterApiServerCaCertificateChain = clusterApiServerCaCertificateChain,
       clusterApiServerEndpointUri = clusterApiServerEndpointUri,
       clusterName = clusterName,
       endpointsResourceName = endpointsResourceName,
       endpointsResourceNamespace = endpointsResourceNamespace,
       roleArn = roleArn}
instance ToResourceProperties EksEndpointsConfigurationProperty where
  toResourceProperties EksEndpointsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::ResponderGateway.EksEndpointsConfiguration",
         supportsTags = Prelude.False,
         properties = ["ClusterApiServerCaCertificateChain"
                         JSON..= clusterApiServerCaCertificateChain,
                       "ClusterApiServerEndpointUri" JSON..= clusterApiServerEndpointUri,
                       "ClusterName" JSON..= clusterName,
                       "EndpointsResourceName" JSON..= endpointsResourceName,
                       "EndpointsResourceNamespace" JSON..= endpointsResourceNamespace,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON EksEndpointsConfigurationProperty where
  toJSON EksEndpointsConfigurationProperty {..}
    = JSON.object
        ["ClusterApiServerCaCertificateChain"
           JSON..= clusterApiServerCaCertificateChain,
         "ClusterApiServerEndpointUri" JSON..= clusterApiServerEndpointUri,
         "ClusterName" JSON..= clusterName,
         "EndpointsResourceName" JSON..= endpointsResourceName,
         "EndpointsResourceNamespace" JSON..= endpointsResourceNamespace,
         "RoleArn" JSON..= roleArn]
instance Property "ClusterApiServerCaCertificateChain" EksEndpointsConfigurationProperty where
  type PropertyType "ClusterApiServerCaCertificateChain" EksEndpointsConfigurationProperty = Value Prelude.Text
  set newValue EksEndpointsConfigurationProperty {..}
    = EksEndpointsConfigurationProperty
        {clusterApiServerCaCertificateChain = newValue, ..}
instance Property "ClusterApiServerEndpointUri" EksEndpointsConfigurationProperty where
  type PropertyType "ClusterApiServerEndpointUri" EksEndpointsConfigurationProperty = Value Prelude.Text
  set newValue EksEndpointsConfigurationProperty {..}
    = EksEndpointsConfigurationProperty
        {clusterApiServerEndpointUri = newValue, ..}
instance Property "ClusterName" EksEndpointsConfigurationProperty where
  type PropertyType "ClusterName" EksEndpointsConfigurationProperty = Value Prelude.Text
  set newValue EksEndpointsConfigurationProperty {..}
    = EksEndpointsConfigurationProperty {clusterName = newValue, ..}
instance Property "EndpointsResourceName" EksEndpointsConfigurationProperty where
  type PropertyType "EndpointsResourceName" EksEndpointsConfigurationProperty = Value Prelude.Text
  set newValue EksEndpointsConfigurationProperty {..}
    = EksEndpointsConfigurationProperty
        {endpointsResourceName = newValue, ..}
instance Property "EndpointsResourceNamespace" EksEndpointsConfigurationProperty where
  type PropertyType "EndpointsResourceNamespace" EksEndpointsConfigurationProperty = Value Prelude.Text
  set newValue EksEndpointsConfigurationProperty {..}
    = EksEndpointsConfigurationProperty
        {endpointsResourceNamespace = newValue, ..}
instance Property "RoleArn" EksEndpointsConfigurationProperty where
  type PropertyType "RoleArn" EksEndpointsConfigurationProperty = Value Prelude.Text
  set newValue EksEndpointsConfigurationProperty {..}
    = EksEndpointsConfigurationProperty {roleArn = newValue, ..}