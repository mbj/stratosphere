module Stratosphere.IoT.BillingGroup (
        module Exports, BillingGroup(..), mkBillingGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.BillingGroup.BillingGroupPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data BillingGroup
  = BillingGroup {billingGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                  billingGroupProperties :: (Prelude.Maybe BillingGroupPropertiesProperty),
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBillingGroup :: BillingGroup
mkBillingGroup
  = BillingGroup
      {billingGroupName = Prelude.Nothing,
       billingGroupProperties = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties BillingGroup where
  toResourceProperties BillingGroup {..}
    = ResourceProperties
        {awsType = "AWS::IoT::BillingGroup", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BillingGroupName" Prelude.<$> billingGroupName,
                            (JSON..=) "BillingGroupProperties"
                              Prelude.<$> billingGroupProperties,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON BillingGroup where
  toJSON BillingGroup {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BillingGroupName" Prelude.<$> billingGroupName,
               (JSON..=) "BillingGroupProperties"
                 Prelude.<$> billingGroupProperties,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "BillingGroupName" BillingGroup where
  type PropertyType "BillingGroupName" BillingGroup = Value Prelude.Text
  set newValue BillingGroup {..}
    = BillingGroup {billingGroupName = Prelude.pure newValue, ..}
instance Property "BillingGroupProperties" BillingGroup where
  type PropertyType "BillingGroupProperties" BillingGroup = BillingGroupPropertiesProperty
  set newValue BillingGroup {..}
    = BillingGroup {billingGroupProperties = Prelude.pure newValue, ..}
instance Property "Tags" BillingGroup where
  type PropertyType "Tags" BillingGroup = [Tag]
  set newValue BillingGroup {..}
    = BillingGroup {tags = Prelude.pure newValue, ..}