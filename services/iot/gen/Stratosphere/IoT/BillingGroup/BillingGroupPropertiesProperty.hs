module Stratosphere.IoT.BillingGroup.BillingGroupPropertiesProperty (
        BillingGroupPropertiesProperty(..),
        mkBillingGroupPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BillingGroupPropertiesProperty
  = BillingGroupPropertiesProperty {billingGroupDescription :: (Prelude.Maybe (Value Prelude.Text))}
mkBillingGroupPropertiesProperty :: BillingGroupPropertiesProperty
mkBillingGroupPropertiesProperty
  = BillingGroupPropertiesProperty
      {billingGroupDescription = Prelude.Nothing}
instance ToResourceProperties BillingGroupPropertiesProperty where
  toResourceProperties BillingGroupPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::BillingGroup.BillingGroupProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BillingGroupDescription"
                              Prelude.<$> billingGroupDescription])}
instance JSON.ToJSON BillingGroupPropertiesProperty where
  toJSON BillingGroupPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BillingGroupDescription"
                 Prelude.<$> billingGroupDescription]))
instance Property "BillingGroupDescription" BillingGroupPropertiesProperty where
  type PropertyType "BillingGroupDescription" BillingGroupPropertiesProperty = Value Prelude.Text
  set newValue BillingGroupPropertiesProperty {}
    = BillingGroupPropertiesProperty
        {billingGroupDescription = Prelude.pure newValue, ..}