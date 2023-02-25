module Stratosphere.EKS.Nodegroup.UpdateConfigProperty (
        UpdateConfigProperty(..), mkUpdateConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UpdateConfigProperty
  = UpdateConfigProperty {maxUnavailable :: (Prelude.Maybe (Value Prelude.Double)),
                          maxUnavailablePercentage :: (Prelude.Maybe (Value Prelude.Double))}
mkUpdateConfigProperty :: UpdateConfigProperty
mkUpdateConfigProperty
  = UpdateConfigProperty
      {maxUnavailable = Prelude.Nothing,
       maxUnavailablePercentage = Prelude.Nothing}
instance ToResourceProperties UpdateConfigProperty where
  toResourceProperties UpdateConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Nodegroup.UpdateConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxUnavailable" Prelude.<$> maxUnavailable,
                            (JSON..=) "MaxUnavailablePercentage"
                              Prelude.<$> maxUnavailablePercentage])}
instance JSON.ToJSON UpdateConfigProperty where
  toJSON UpdateConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxUnavailable" Prelude.<$> maxUnavailable,
               (JSON..=) "MaxUnavailablePercentage"
                 Prelude.<$> maxUnavailablePercentage]))
instance Property "MaxUnavailable" UpdateConfigProperty where
  type PropertyType "MaxUnavailable" UpdateConfigProperty = Value Prelude.Double
  set newValue UpdateConfigProperty {..}
    = UpdateConfigProperty {maxUnavailable = Prelude.pure newValue, ..}
instance Property "MaxUnavailablePercentage" UpdateConfigProperty where
  type PropertyType "MaxUnavailablePercentage" UpdateConfigProperty = Value Prelude.Double
  set newValue UpdateConfigProperty {..}
    = UpdateConfigProperty
        {maxUnavailablePercentage = Prelude.pure newValue, ..}