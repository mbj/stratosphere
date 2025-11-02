module Stratosphere.DataBrew.Job.AllowedStatisticsProperty (
        AllowedStatisticsProperty(..), mkAllowedStatisticsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AllowedStatisticsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-allowedstatistics.html>
    AllowedStatisticsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-allowedstatistics.html#cfn-databrew-job-allowedstatistics-statistics>
                               statistics :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAllowedStatisticsProperty ::
  ValueList Prelude.Text -> AllowedStatisticsProperty
mkAllowedStatisticsProperty statistics
  = AllowedStatisticsProperty
      {haddock_workaround_ = (), statistics = statistics}
instance ToResourceProperties AllowedStatisticsProperty where
  toResourceProperties AllowedStatisticsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.AllowedStatistics",
         supportsTags = Prelude.False,
         properties = ["Statistics" JSON..= statistics]}
instance JSON.ToJSON AllowedStatisticsProperty where
  toJSON AllowedStatisticsProperty {..}
    = JSON.object ["Statistics" JSON..= statistics]
instance Property "Statistics" AllowedStatisticsProperty where
  type PropertyType "Statistics" AllowedStatisticsProperty = ValueList Prelude.Text
  set newValue AllowedStatisticsProperty {..}
    = AllowedStatisticsProperty {statistics = newValue, ..}