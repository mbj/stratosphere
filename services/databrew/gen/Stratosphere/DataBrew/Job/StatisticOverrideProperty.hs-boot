module Stratosphere.DataBrew.Job.StatisticOverrideProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StatisticOverrideProperty :: Prelude.Type
instance ToResourceProperties StatisticOverrideProperty
instance JSON.ToJSON StatisticOverrideProperty