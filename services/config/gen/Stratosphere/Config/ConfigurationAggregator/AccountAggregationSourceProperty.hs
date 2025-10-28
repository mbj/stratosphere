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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-accountaggregationsource.html>
    AccountAggregationSourceProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-accountaggregationsource.html#cfn-config-configurationaggregator-accountaggregationsource-accountids>
                                      accountIds :: (ValueList Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-accountaggregationsource.html#cfn-config-configurationaggregator-accountaggregationsource-allawsregions>
                                      allAwsRegions :: (Prelude.Maybe (Value Prelude.Bool)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-accountaggregationsource.html#cfn-config-configurationaggregator-accountaggregationsource-awsregions>
                                      awsRegions :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccountAggregationSourceProperty ::
  ValueList Prelude.Text -> AccountAggregationSourceProperty
mkAccountAggregationSourceProperty accountIds
  = AccountAggregationSourceProperty
      {haddock_workaround_ = (), accountIds = accountIds,
       allAwsRegions = Prelude.Nothing, awsRegions = Prelude.Nothing}
instance ToResourceProperties AccountAggregationSourceProperty where
  toResourceProperties AccountAggregationSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigurationAggregator.AccountAggregationSource",
         supportsTags = Prelude.False,
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
  type PropertyType "AccountIds" AccountAggregationSourceProperty = ValueList Prelude.Text
  set newValue AccountAggregationSourceProperty {..}
    = AccountAggregationSourceProperty {accountIds = newValue, ..}
instance Property "AllAwsRegions" AccountAggregationSourceProperty where
  type PropertyType "AllAwsRegions" AccountAggregationSourceProperty = Value Prelude.Bool
  set newValue AccountAggregationSourceProperty {..}
    = AccountAggregationSourceProperty
        {allAwsRegions = Prelude.pure newValue, ..}
instance Property "AwsRegions" AccountAggregationSourceProperty where
  type PropertyType "AwsRegions" AccountAggregationSourceProperty = ValueList Prelude.Text
  set newValue AccountAggregationSourceProperty {..}
    = AccountAggregationSourceProperty
        {awsRegions = Prelude.pure newValue, ..}