module Stratosphere.BillingConductor.BillingGroup.AccountGroupingProperty (
        AccountGroupingProperty(..), mkAccountGroupingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccountGroupingProperty
  = AccountGroupingProperty {linkedAccountIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccountGroupingProperty ::
  ValueList Prelude.Text -> AccountGroupingProperty
mkAccountGroupingProperty linkedAccountIds
  = AccountGroupingProperty {linkedAccountIds = linkedAccountIds}
instance ToResourceProperties AccountGroupingProperty where
  toResourceProperties AccountGroupingProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::BillingGroup.AccountGrouping",
         supportsTags = Prelude.False,
         properties = ["LinkedAccountIds" JSON..= linkedAccountIds]}
instance JSON.ToJSON AccountGroupingProperty where
  toJSON AccountGroupingProperty {..}
    = JSON.object ["LinkedAccountIds" JSON..= linkedAccountIds]
instance Property "LinkedAccountIds" AccountGroupingProperty where
  type PropertyType "LinkedAccountIds" AccountGroupingProperty = ValueList Prelude.Text
  set newValue AccountGroupingProperty {}
    = AccountGroupingProperty {linkedAccountIds = newValue, ..}