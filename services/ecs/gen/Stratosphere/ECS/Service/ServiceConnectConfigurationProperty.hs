module Stratosphere.ECS.Service.ServiceConnectConfigurationProperty (
        module Exports, ServiceConnectConfigurationProperty(..),
        mkServiceConnectConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.LogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceConnectServiceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceConnectConfigurationProperty
  = ServiceConnectConfigurationProperty {enabled :: (Value Prelude.Bool),
                                         logConfiguration :: (Prelude.Maybe LogConfigurationProperty),
                                         namespace :: (Prelude.Maybe (Value Prelude.Text)),
                                         services :: (Prelude.Maybe [ServiceConnectServiceProperty])}
mkServiceConnectConfigurationProperty ::
  Value Prelude.Bool -> ServiceConnectConfigurationProperty
mkServiceConnectConfigurationProperty enabled
  = ServiceConnectConfigurationProperty
      {enabled = enabled, logConfiguration = Prelude.Nothing,
       namespace = Prelude.Nothing, services = Prelude.Nothing}
instance ToResourceProperties ServiceConnectConfigurationProperty where
  toResourceProperties ServiceConnectConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceConnectConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                               (JSON..=) "Namespace" Prelude.<$> namespace,
                               (JSON..=) "Services" Prelude.<$> services]))}
instance JSON.ToJSON ServiceConnectConfigurationProperty where
  toJSON ServiceConnectConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                  (JSON..=) "Namespace" Prelude.<$> namespace,
                  (JSON..=) "Services" Prelude.<$> services])))
instance Property "Enabled" ServiceConnectConfigurationProperty where
  type PropertyType "Enabled" ServiceConnectConfigurationProperty = Value Prelude.Bool
  set newValue ServiceConnectConfigurationProperty {..}
    = ServiceConnectConfigurationProperty {enabled = newValue, ..}
instance Property "LogConfiguration" ServiceConnectConfigurationProperty where
  type PropertyType "LogConfiguration" ServiceConnectConfigurationProperty = LogConfigurationProperty
  set newValue ServiceConnectConfigurationProperty {..}
    = ServiceConnectConfigurationProperty
        {logConfiguration = Prelude.pure newValue, ..}
instance Property "Namespace" ServiceConnectConfigurationProperty where
  type PropertyType "Namespace" ServiceConnectConfigurationProperty = Value Prelude.Text
  set newValue ServiceConnectConfigurationProperty {..}
    = ServiceConnectConfigurationProperty
        {namespace = Prelude.pure newValue, ..}
instance Property "Services" ServiceConnectConfigurationProperty where
  type PropertyType "Services" ServiceConnectConfigurationProperty = [ServiceConnectServiceProperty]
  set newValue ServiceConnectConfigurationProperty {..}
    = ServiceConnectConfigurationProperty
        {services = Prelude.pure newValue, ..}