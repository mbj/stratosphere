module Stratosphere.ECS.TaskDefinition.ProxyConfigurationProperty (
        module Exports, ProxyConfigurationProperty(..),
        mkProxyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.KeyValuePairProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProxyConfigurationProperty
  = ProxyConfigurationProperty {containerName :: (Value Prelude.Text),
                                proxyConfigurationProperties :: (Prelude.Maybe [KeyValuePairProperty]),
                                type' :: (Prelude.Maybe (Value Prelude.Text))}
mkProxyConfigurationProperty ::
  Value Prelude.Text -> ProxyConfigurationProperty
mkProxyConfigurationProperty containerName
  = ProxyConfigurationProperty
      {containerName = containerName,
       proxyConfigurationProperties = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties ProxyConfigurationProperty where
  toResourceProperties ProxyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.ProxyConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContainerName" JSON..= containerName]
                           (Prelude.catMaybes
                              [(JSON..=) "ProxyConfigurationProperties"
                                 Prelude.<$> proxyConfigurationProperties,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON ProxyConfigurationProperty where
  toJSON ProxyConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContainerName" JSON..= containerName]
              (Prelude.catMaybes
                 [(JSON..=) "ProxyConfigurationProperties"
                    Prelude.<$> proxyConfigurationProperties,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "ContainerName" ProxyConfigurationProperty where
  type PropertyType "ContainerName" ProxyConfigurationProperty = Value Prelude.Text
  set newValue ProxyConfigurationProperty {..}
    = ProxyConfigurationProperty {containerName = newValue, ..}
instance Property "ProxyConfigurationProperties" ProxyConfigurationProperty where
  type PropertyType "ProxyConfigurationProperties" ProxyConfigurationProperty = [KeyValuePairProperty]
  set newValue ProxyConfigurationProperty {..}
    = ProxyConfigurationProperty
        {proxyConfigurationProperties = Prelude.pure newValue, ..}
instance Property "Type" ProxyConfigurationProperty where
  type PropertyType "Type" ProxyConfigurationProperty = Value Prelude.Text
  set newValue ProxyConfigurationProperty {..}
    = ProxyConfigurationProperty {type' = Prelude.pure newValue, ..}