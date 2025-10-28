module Stratosphere.ServiceDiscovery.Service.HealthCheckConfigProperty (
        HealthCheckConfigProperty(..), mkHealthCheckConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html>
    HealthCheckConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-failurethreshold>
                               failureThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-resourcepath>
                               resourcePath :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-type>
                               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHealthCheckConfigProperty ::
  Value Prelude.Text -> HealthCheckConfigProperty
mkHealthCheckConfigProperty type'
  = HealthCheckConfigProperty
      {haddock_workaround_ = (), type' = type',
       failureThreshold = Prelude.Nothing, resourcePath = Prelude.Nothing}
instance ToResourceProperties HealthCheckConfigProperty where
  toResourceProperties HealthCheckConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::Service.HealthCheckConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "FailureThreshold" Prelude.<$> failureThreshold,
                               (JSON..=) "ResourcePath" Prelude.<$> resourcePath]))}
instance JSON.ToJSON HealthCheckConfigProperty where
  toJSON HealthCheckConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "FailureThreshold" Prelude.<$> failureThreshold,
                  (JSON..=) "ResourcePath" Prelude.<$> resourcePath])))
instance Property "FailureThreshold" HealthCheckConfigProperty where
  type PropertyType "FailureThreshold" HealthCheckConfigProperty = Value Prelude.Double
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {failureThreshold = Prelude.pure newValue, ..}
instance Property "ResourcePath" HealthCheckConfigProperty where
  type PropertyType "ResourcePath" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {resourcePath = Prelude.pure newValue, ..}
instance Property "Type" HealthCheckConfigProperty where
  type PropertyType "Type" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {type' = newValue, ..}