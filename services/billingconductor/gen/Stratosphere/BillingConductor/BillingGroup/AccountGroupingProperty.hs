module Stratosphere.BillingConductor.BillingGroup.AccountGroupingProperty (
        AccountGroupingProperty(..), mkAccountGroupingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccountGroupingProperty
  = AccountGroupingProperty {autoAssociate :: (Prelude.Maybe (Value Prelude.Bool)),
                             linkedAccountIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccountGroupingProperty ::
  ValueList Prelude.Text -> AccountGroupingProperty
mkAccountGroupingProperty linkedAccountIds
  = AccountGroupingProperty
      {linkedAccountIds = linkedAccountIds,
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