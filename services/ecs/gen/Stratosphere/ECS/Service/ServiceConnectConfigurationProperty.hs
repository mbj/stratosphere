module Stratosphere.ECS.Service.ServiceConnectConfigurationProperty (
        module Exports, ServiceConnectConfigurationProperty(..),
        mkServiceConnectConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.LogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceConnectAccessLogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceConnectServiceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceConnectConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnectconfiguration.html>
    ServiceConnectConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnectconfiguration.html#cfn-ecs-service-serviceconnectconfiguration-accesslogconfiguration>
                                         accessLogConfiguration :: (Prelude.Maybe ServiceConnectAccessLogConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnectconfiguration.html#cfn-ecs-service-serviceconnectconfiguration-enabled>
                                         enabled :: (Value Prelude.Bool),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnectconfiguration.html#cfn-ecs-service-serviceconnectconfiguration-logconfiguration>
                                         logConfiguration :: (Prelude.Maybe LogConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnectconfiguration.html#cfn-ecs-service-serviceconnectconfiguration-namespace>
                                         namespace :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnectconfiguration.html#cfn-ecs-service-serviceconnectconfiguration-services>
                                         services :: (Prelude.Maybe [ServiceConnectServiceProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceConnectConfigurationProperty ::
  Value Prelude.Bool -> ServiceConnectConfigurationProperty
mkServiceConnectConfigurationProperty enabled
  = ServiceConnectConfigurationProperty
      {haddock_workaround_ = (), enabled = enabled,
       accessLogConfiguration = Prelude.Nothing,
       logConfiguration = Prelude.Nothing, namespace = Prelude.Nothing,
       services = Prelude.Nothing}
instance ToResourceProperties ServiceConnectConfigurationProperty where
  toResourceProperties ServiceConnectConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceConnectConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessLogConfiguration"
                                 Prelude.<$> accessLogConfiguration,
                               (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                               (JSON..=) "Namespace" Prelude.<$> namespace,
                               (JSON..=) "Services" Prelude.<$> services]))}
instance JSON.ToJSON ServiceConnectConfigurationProperty where
  toJSON ServiceConnectConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "AccessLogConfiguration"
                    Prelude.<$> accessLogConfiguration,
                  (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                  (JSON..=) "Namespace" Prelude.<$> namespace,
                  (JSON..=) "Services" Prelude.<$> services])))
instance Property "AccessLogConfiguration" ServiceConnectConfigurationProperty where
  type PropertyType "AccessLogConfiguration" ServiceConnectConfigurationProperty = ServiceConnectAccessLogConfigurationProperty
  set newValue ServiceConnectConfigurationProperty {..}
    = ServiceConnectConfigurationProperty
        {accessLogConfiguration = Prelude.pure newValue, ..}
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