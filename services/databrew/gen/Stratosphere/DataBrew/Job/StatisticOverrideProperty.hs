module Stratosphere.DataBrew.Job.StatisticOverrideProperty (
        StatisticOverrideProperty(..), mkStatisticOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatisticOverrideProperty
  = StatisticOverrideProperty {parameters :: (Prelude.Map Prelude.Text (Value Prelude.Text)),
                               statistic :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatisticOverrideProperty ::
  Prelude.Map Prelude.Text (Value Prelude.Text)
  -> Value Prelude.Text -> StatisticOverrideProperty
mkStatisticOverrideProperty parameters statistic
  = StatisticOverrideProperty
      {parameters = parameters, statistic = statistic}
instance ToResourceProperties StatisticOverrideProperty where
  toResourceProperties StatisticOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.StatisticOverride",
         supportsTags = Prelude.False,
         properties = ["Parameters" JSON..= parameters,
                       "Statistic" JSON..= statistic]}
instance JSON.ToJSON StatisticOverrideProperty where
  toJSON StatisticOverrideProperty {..}
    = JSON.object
        ["Parameters" JSON..= parameters, "Statistic" JSON..= statistic]
instance Property "Parameters" StatisticOverrideProperty where
  type PropertyType "Parameters" StatisticOverrideProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue StatisticOverrideProperty {..}
    = StatisticOverrideProperty {parameters = newValue, ..}
instance Property "Statistic" StatisticOverrideProperty where
  type PropertyType "Statistic" StatisticOverrideProperty = Value Prelude.Text
  set newValue StatisticOverrideProperty {..}
    = StatisticOverrideProperty {statistic = newValue, ..}