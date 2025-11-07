module Stratosphere.ECS.Service.ServiceConnectAccessLogConfigurationProperty (
        ServiceConnectAccessLogConfigurationProperty(..),
        mkServiceConnectAccessLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceConnectAccessLogConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnectaccesslogconfiguration.html>
    ServiceConnectAccessLogConfigurationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnectaccesslogconfiguration.html#cfn-ecs-service-serviceconnectaccesslogconfiguration-format>
                                                  format :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnectaccesslogconfiguration.html#cfn-ecs-service-serviceconnectaccesslogconfiguration-includequeryparameters>
                                                  includeQueryParameters :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceConnectAccessLogConfigurationProperty ::
  Value Prelude.Text -> ServiceConnectAccessLogConfigurationProperty
mkServiceConnectAccessLogConfigurationProperty format
  = ServiceConnectAccessLogConfigurationProperty
      {haddock_workaround_ = (), format = format,
       includeQueryParameters = Prelude.Nothing}
instance ToResourceProperties ServiceConnectAccessLogConfigurationProperty where
  toResourceProperties
    ServiceConnectAccessLogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceConnectAccessLogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Format" JSON..= format]
                           (Prelude.catMaybes
                              [(JSON..=) "IncludeQueryParameters"
                                 Prelude.<$> includeQueryParameters]))}
instance JSON.ToJSON ServiceConnectAccessLogConfigurationProperty where
  toJSON ServiceConnectAccessLogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Format" JSON..= format]
              (Prelude.catMaybes
                 [(JSON..=) "IncludeQueryParameters"
                    Prelude.<$> includeQueryParameters])))
instance Property "Format" ServiceConnectAccessLogConfigurationProperty where
  type PropertyType "Format" ServiceConnectAccessLogConfigurationProperty = Value Prelude.Text
  set newValue ServiceConnectAccessLogConfigurationProperty {..}
    = ServiceConnectAccessLogConfigurationProperty
        {format = newValue, ..}
instance Property "IncludeQueryParameters" ServiceConnectAccessLogConfigurationProperty where
  type PropertyType "IncludeQueryParameters" ServiceConnectAccessLogConfigurationProperty = Value Prelude.Text
  set newValue ServiceConnectAccessLogConfigurationProperty {..}
    = ServiceConnectAccessLogConfigurationProperty
        {includeQueryParameters = Prelude.pure newValue, ..}