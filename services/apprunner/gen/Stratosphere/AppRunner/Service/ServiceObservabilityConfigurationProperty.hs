module Stratosphere.AppRunner.Service.ServiceObservabilityConfigurationProperty (
        ServiceObservabilityConfigurationProperty(..),
        mkServiceObservabilityConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceObservabilityConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-serviceobservabilityconfiguration.html>
    ServiceObservabilityConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-serviceobservabilityconfiguration.html#cfn-apprunner-service-serviceobservabilityconfiguration-observabilityconfigurationarn>
                                               observabilityConfigurationArn :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-serviceobservabilityconfiguration.html#cfn-apprunner-service-serviceobservabilityconfiguration-observabilityenabled>
                                               observabilityEnabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceObservabilityConfigurationProperty ::
  Value Prelude.Bool -> ServiceObservabilityConfigurationProperty
mkServiceObservabilityConfigurationProperty observabilityEnabled
  = ServiceObservabilityConfigurationProperty
      {haddock_workaround_ = (),
       observabilityEnabled = observabilityEnabled,
       observabilityConfigurationArn = Prelude.Nothing}
instance ToResourceProperties ServiceObservabilityConfigurationProperty where
  toResourceProperties ServiceObservabilityConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.ServiceObservabilityConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ObservabilityEnabled" JSON..= observabilityEnabled]
                           (Prelude.catMaybes
                              [(JSON..=) "ObservabilityConfigurationArn"
                                 Prelude.<$> observabilityConfigurationArn]))}
instance JSON.ToJSON ServiceObservabilityConfigurationProperty where
  toJSON ServiceObservabilityConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ObservabilityEnabled" JSON..= observabilityEnabled]
              (Prelude.catMaybes
                 [(JSON..=) "ObservabilityConfigurationArn"
                    Prelude.<$> observabilityConfigurationArn])))
instance Property "ObservabilityConfigurationArn" ServiceObservabilityConfigurationProperty where
  type PropertyType "ObservabilityConfigurationArn" ServiceObservabilityConfigurationProperty = Value Prelude.Text
  set newValue ServiceObservabilityConfigurationProperty {..}
    = ServiceObservabilityConfigurationProperty
        {observabilityConfigurationArn = Prelude.pure newValue, ..}
instance Property "ObservabilityEnabled" ServiceObservabilityConfigurationProperty where
  type PropertyType "ObservabilityEnabled" ServiceObservabilityConfigurationProperty = Value Prelude.Bool
  set newValue ServiceObservabilityConfigurationProperty {..}
    = ServiceObservabilityConfigurationProperty
        {observabilityEnabled = newValue, ..}