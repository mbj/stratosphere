module Stratosphere.DataBrew.Job.AllowedStatisticsProperty (
        AllowedStatisticsProperty(..), mkAllowedStatisticsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AllowedStatisticsProperty
  = AllowedStatisticsProperty {statistics :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAllowedStatisticsProperty ::
  ValueList Prelude.Text -> AllowedStatisticsProperty
mkAllowedStatisticsProperty statistics
  = AllowedStatisticsProperty {statistics = statistics}
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
  set newValue AllowedStatisticsProperty {}
    = AllowedStatisticsProperty {statistics = newValue, ..}