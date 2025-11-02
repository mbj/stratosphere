module Stratosphere.DataBrew.Job.StatisticOverrideProperty (
        StatisticOverrideProperty(..), mkStatisticOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatisticOverrideProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-statisticoverride.html>
    StatisticOverrideProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-statisticoverride.html#cfn-databrew-job-statisticoverride-parameters>
                               parameters :: (Prelude.Map Prelude.Text (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-statisticoverride.html#cfn-databrew-job-statisticoverride-statistic>
                               statistic :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatisticOverrideProperty ::
  Prelude.Map Prelude.Text (Value Prelude.Text)
  -> Value Prelude.Text -> StatisticOverrideProperty
mkStatisticOverrideProperty parameters statistic
  = StatisticOverrideProperty
      {haddock_workaround_ = (), parameters = parameters,
       statistic = statistic}
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