module Stratosphere.SageMaker.EndpointConfig.ManagedInstanceScalingProperty (
        ManagedInstanceScalingProperty(..),
        mkManagedInstanceScalingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedInstanceScalingProperty
  = ManagedInstanceScalingProperty {maxInstanceCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                    minInstanceCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                    status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedInstanceScalingProperty :: ManagedInstanceScalingProperty
mkManagedInstanceScalingProperty
  = ManagedInstanceScalingProperty
      {maxInstanceCount = Prelude.Nothing,
       minInstanceCount = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties ManagedInstanceScalingProperty where
  toResourceProperties ManagedInstanceScalingProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.ManagedInstanceScaling",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxInstanceCount" Prelude.<$> maxInstanceCount,
                            (JSON..=) "MinInstanceCount" Prelude.<$> minInstanceCount,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON ManagedInstanceScalingProperty where
  toJSON ManagedInstanceScalingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxInstanceCount" Prelude.<$> maxInstanceCount,
               (JSON..=) "MinInstanceCount" Prelude.<$> minInstanceCount,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "MaxInstanceCount" ManagedInstanceScalingProperty where
  type PropertyType "MaxInstanceCount" ManagedInstanceScalingProperty = Value Prelude.Integer
  set newValue ManagedInstanceScalingProperty {..}
    = ManagedInstanceScalingProperty
        {maxInstanceCount = Prelude.pure newValue, ..}
instance Property "MinInstanceCount" ManagedInstanceScalingProperty where
  type PropertyType "MinInstanceCount" ManagedInstanceScalingProperty = Value Prelude.Integer
  set newValue ManagedInstanceScalingProperty {..}
    = ManagedInstanceScalingProperty
        {minInstanceCount = Prelude.pure newValue, ..}
instance Property "Status" ManagedInstanceScalingProperty where
  type PropertyType "Status" ManagedInstanceScalingProperty = Value Prelude.Text
  set newValue ManagedInstanceScalingProperty {..}
    = ManagedInstanceScalingProperty
        {status = Prelude.pure newValue, ..}