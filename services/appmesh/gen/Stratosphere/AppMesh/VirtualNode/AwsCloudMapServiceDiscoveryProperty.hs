module Stratosphere.AppMesh.VirtualNode.AwsCloudMapServiceDiscoveryProperty (
        module Exports, AwsCloudMapServiceDiscoveryProperty(..),
        mkAwsCloudMapServiceDiscoveryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.AwsCloudMapInstanceAttributeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsCloudMapServiceDiscoveryProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html>
    AwsCloudMapServiceDiscoveryProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html#cfn-appmesh-virtualnode-awscloudmapservicediscovery-attributes>
                                         attributes :: (Prelude.Maybe [AwsCloudMapInstanceAttributeProperty]),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html#cfn-appmesh-virtualnode-awscloudmapservicediscovery-ippreference>
                                         ipPreference :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html#cfn-appmesh-virtualnode-awscloudmapservicediscovery-namespacename>
                                         namespaceName :: (Value Prelude.Text),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html#cfn-appmesh-virtualnode-awscloudmapservicediscovery-servicename>
                                         serviceName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsCloudMapServiceDiscoveryProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AwsCloudMapServiceDiscoveryProperty
mkAwsCloudMapServiceDiscoveryProperty namespaceName serviceName
  = AwsCloudMapServiceDiscoveryProperty
      {namespaceName = namespaceName, serviceName = serviceName,
       attributes = Prelude.Nothing, ipPreference = Prelude.Nothing}
instance ToResourceProperties AwsCloudMapServiceDiscoveryProperty where
  toResourceProperties AwsCloudMapServiceDiscoveryProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.AwsCloudMapServiceDiscovery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NamespaceName" JSON..= namespaceName,
                            "ServiceName" JSON..= serviceName]
                           (Prelude.catMaybes
                              [(JSON..=) "Attributes" Prelude.<$> attributes,
                               (JSON..=) "IpPreference" Prelude.<$> ipPreference]))}
instance JSON.ToJSON AwsCloudMapServiceDiscoveryProperty where
  toJSON AwsCloudMapServiceDiscoveryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NamespaceName" JSON..= namespaceName,
               "ServiceName" JSON..= serviceName]
              (Prelude.catMaybes
                 [(JSON..=) "Attributes" Prelude.<$> attributes,
                  (JSON..=) "IpPreference" Prelude.<$> ipPreference])))
instance Property "Attributes" AwsCloudMapServiceDiscoveryProperty where
  type PropertyType "Attributes" AwsCloudMapServiceDiscoveryProperty = [AwsCloudMapInstanceAttributeProperty]
  set newValue AwsCloudMapServiceDiscoveryProperty {..}
    = AwsCloudMapServiceDiscoveryProperty
        {attributes = Prelude.pure newValue, ..}
instance Property "IpPreference" AwsCloudMapServiceDiscoveryProperty where
  type PropertyType "IpPreference" AwsCloudMapServiceDiscoveryProperty = Value Prelude.Text
  set newValue AwsCloudMapServiceDiscoveryProperty {..}
    = AwsCloudMapServiceDiscoveryProperty
        {ipPreference = Prelude.pure newValue, ..}
instance Property "NamespaceName" AwsCloudMapServiceDiscoveryProperty where
  type PropertyType "NamespaceName" AwsCloudMapServiceDiscoveryProperty = Value Prelude.Text
  set newValue AwsCloudMapServiceDiscoveryProperty {..}
    = AwsCloudMapServiceDiscoveryProperty
        {namespaceName = newValue, ..}
instance Property "ServiceName" AwsCloudMapServiceDiscoveryProperty where
  type PropertyType "ServiceName" AwsCloudMapServiceDiscoveryProperty = Value Prelude.Text
  set newValue AwsCloudMapServiceDiscoveryProperty {..}
    = AwsCloudMapServiceDiscoveryProperty {serviceName = newValue, ..}