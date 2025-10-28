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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-billinggroup-billinggroupproperties.html>
    BillingGroupPropertiesProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-billinggroup-billinggroupproperties.html#cfn-iot-billinggroup-billinggroupproperties-billinggroupdescription>
                                    billingGroupDescription :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBillingGroupPropertiesProperty :: BillingGroupPropertiesProperty
mkBillingGroupPropertiesProperty
  = BillingGroupPropertiesProperty
      {haddock_workaround_ = (),
       billingGroupDescription = Prelude.Nothing}
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
  set newValue BillingGroupPropertiesProperty {..}
    = BillingGroupPropertiesProperty
        {billingGroupDescription = Prelude.pure newValue, ..}