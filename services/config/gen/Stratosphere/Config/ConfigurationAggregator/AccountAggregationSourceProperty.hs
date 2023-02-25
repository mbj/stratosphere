module Stratosphere.Config.ConfigurationAggregator.AccountAggregationSourceProperty (
        AccountAggregationSourceProperty(..),
        mkAccountAggregationSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccountAggregationSourceProperty
  = AccountAggregationSourceProperty {accountIds :: (ValueList (Value Prelude.Text)),
                                      allAwsRegions :: (Prelude.Maybe (Value Prelude.Bool)),
                                      awsRegions :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkAccountAggregationSourceProperty ::
  ValueList (Value Prelude.Text) -> AccountAggregationSourceProperty
mkAccountAggregationSourceProperty accountIds
  = AccountAggregationSourceProperty
      {accountIds = accountIds, allAwsRegions = Prelude.Nothing,
       awsRegions = Prelude.Nothing}
instance ToResourceProperties AccountAggregationSourceProperty where
  toResourceProperties AccountAggregationSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigurationAggregator.AccountAggregationSource",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountIds" JSON..= accountIds]
                           (Prelude.catMaybes
                              [(JSON..=) "AllAwsRegions" Prelude.<$> allAwsRegions,
                               (JSON..=) "AwsRegions" Prelude.<$> awsRegions]))}
instance JSON.ToJSON AccountAggregationSourceProperty where
  toJSON AccountAggregationSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountIds" JSON..= accountIds]
              (Prelude.catMaybes
                 [(JSON..=) "AllAwsRegions" Prelude.<$> allAwsRegions,
                  (JSON..=) "AwsRegions" Prelude.<$> awsRegions])))
instance Property "AccountIds" AccountAggregationSourceProperty where
  type PropertyType "AccountIds" AccountAggregationSourceProperty = ValueList (Value Prelude.Text)
  set newValue AccountAggregationSourceProperty {..}
    = AccountAggregationSourceProperty {accountIds = newValue, ..}
instance Property "AllAwsRegions" AccountAggregationSourceProperty where
  type PropertyType "AllAwsRegions" AccountAggregationSourceProperty = Value Prelude.Bool
  set newValue AccountAggregationSourceProperty {..}
    = AccountAggregationSourceProperty
        {allAwsRegions = Prelude.pure newValue, ..}
instance Property "AwsRegions" AccountAggregationSourceProperty where
  type PropertyType "AwsRegions" AccountAggregationSourceProperty = ValueList (Value Prelude.Text)
  set newValue AccountAggregationSourceProperty {..}
    = AccountAggregationSourceProperty
        {awsRegions = Prelude.pure newValue, ..}