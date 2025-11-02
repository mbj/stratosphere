module Stratosphere.BillingConductor.BillingGroup.AccountGroupingProperty (
        AccountGroupingProperty(..), mkAccountGroupingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccountGroupingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-billinggroup-accountgrouping.html>
    AccountGroupingProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-billinggroup-accountgrouping.html#cfn-billingconductor-billinggroup-accountgrouping-autoassociate>
                             autoAssociate :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-billinggroup-accountgrouping.html#cfn-billingconductor-billinggroup-accountgrouping-linkedaccountids>
                             linkedAccountIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccountGroupingProperty ::
  ValueList Prelude.Text -> AccountGroupingProperty
mkAccountGroupingProperty linkedAccountIds
  = AccountGroupingProperty
      {haddock_workaround_ = (), linkedAccountIds = linkedAccountIds,
       autoAssociate = Prelude.Nothing}
instance ToResourceProperties AccountGroupingProperty where
  toResourceProperties AccountGroupingProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::BillingGroup.AccountGrouping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LinkedAccountIds" JSON..= linkedAccountIds]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoAssociate" Prelude.<$> autoAssociate]))}
instance JSON.ToJSON AccountGroupingProperty where
  toJSON AccountGroupingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LinkedAccountIds" JSON..= linkedAccountIds]
              (Prelude.catMaybes
                 [(JSON..=) "AutoAssociate" Prelude.<$> autoAssociate])))
instance Property "AutoAssociate" AccountGroupingProperty where
  type PropertyType "AutoAssociate" AccountGroupingProperty = Value Prelude.Bool
  set newValue AccountGroupingProperty {..}
    = AccountGroupingProperty
        {autoAssociate = Prelude.pure newValue, ..}
instance Property "LinkedAccountIds" AccountGroupingProperty where
  type PropertyType "LinkedAccountIds" AccountGroupingProperty = ValueList Prelude.Text
  set newValue AccountGroupingProperty {..}
    = AccountGroupingProperty {linkedAccountIds = newValue, ..}