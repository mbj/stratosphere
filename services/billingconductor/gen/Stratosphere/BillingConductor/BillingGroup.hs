module Stratosphere.BillingConductor.BillingGroup (
        module Exports, BillingGroup(..), mkBillingGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BillingConductor.BillingGroup.AccountGroupingProperty as Exports
import {-# SOURCE #-} Stratosphere.BillingConductor.BillingGroup.ComputationPreferenceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data BillingGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-billinggroup.html>
    BillingGroup {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-billinggroup.html#cfn-billingconductor-billinggroup-accountgrouping>
                  accountGrouping :: AccountGroupingProperty,
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-billinggroup.html#cfn-billingconductor-billinggroup-computationpreference>
                  computationPreference :: ComputationPreferenceProperty,
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-billinggroup.html#cfn-billingconductor-billinggroup-description>
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-billinggroup.html#cfn-billingconductor-billinggroup-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-billinggroup.html#cfn-billingconductor-billinggroup-primaryaccountid>
                  primaryAccountId :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-billinggroup.html#cfn-billingconductor-billinggroup-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBillingGroup ::
  AccountGroupingProperty
  -> ComputationPreferenceProperty
     -> Value Prelude.Text -> Value Prelude.Text -> BillingGroup
mkBillingGroup
  accountGrouping
  computationPreference
  name
  primaryAccountId
  = BillingGroup
      {haddock_workaround_ = (), accountGrouping = accountGrouping,
       computationPreference = computationPreference, name = name,
       primaryAccountId = primaryAccountId, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties BillingGroup where
  toResourceProperties BillingGroup {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::BillingGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountGrouping" JSON..= accountGrouping,
                            "ComputationPreference" JSON..= computationPreference,
                            "Name" JSON..= name, "PrimaryAccountId" JSON..= primaryAccountId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON BillingGroup where
  toJSON BillingGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountGrouping" JSON..= accountGrouping,
               "ComputationPreference" JSON..= computationPreference,
               "Name" JSON..= name, "PrimaryAccountId" JSON..= primaryAccountId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccountGrouping" BillingGroup where
  type PropertyType "AccountGrouping" BillingGroup = AccountGroupingProperty
  set newValue BillingGroup {..}
    = BillingGroup {accountGrouping = newValue, ..}
instance Property "ComputationPreference" BillingGroup where
  type PropertyType "ComputationPreference" BillingGroup = ComputationPreferenceProperty
  set newValue BillingGroup {..}
    = BillingGroup {computationPreference = newValue, ..}
instance Property "Description" BillingGroup where
  type PropertyType "Description" BillingGroup = Value Prelude.Text
  set newValue BillingGroup {..}
    = BillingGroup {description = Prelude.pure newValue, ..}
instance Property "Name" BillingGroup where
  type PropertyType "Name" BillingGroup = Value Prelude.Text
  set newValue BillingGroup {..} = BillingGroup {name = newValue, ..}
instance Property "PrimaryAccountId" BillingGroup where
  type PropertyType "PrimaryAccountId" BillingGroup = Value Prelude.Text
  set newValue BillingGroup {..}
    = BillingGroup {primaryAccountId = newValue, ..}
instance Property "Tags" BillingGroup where
  type PropertyType "Tags" BillingGroup = [Tag]
  set newValue BillingGroup {..}
    = BillingGroup {tags = Prelude.pure newValue, ..}