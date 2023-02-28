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
  = ServiceObservabilityConfigurationProperty {observabilityConfigurationArn :: (Prelude.Maybe (Value Prelude.Text)),
                                               observabilityEnabled :: (Value Prelude.Bool)}
mkServiceObservabilityConfigurationProperty ::
  Value Prelude.Bool -> ServiceObservabilityConfigurationProperty
mkServiceObservabilityConfigurationProperty observabilityEnabled
  = ServiceObservabilityConfigurationProperty
      {observabilityEnabled = observabilityEnabled,
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