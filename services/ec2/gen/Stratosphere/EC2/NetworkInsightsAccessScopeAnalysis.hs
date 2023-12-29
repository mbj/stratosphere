module Stratosphere.EC2.NetworkInsightsAccessScopeAnalysis (
        NetworkInsightsAccessScopeAnalysis(..),
        mkNetworkInsightsAccessScopeAnalysis
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data NetworkInsightsAccessScopeAnalysis
  = NetworkInsightsAccessScopeAnalysis {networkInsightsAccessScopeId :: (Value Prelude.Text),
                                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInsightsAccessScopeAnalysis ::
  Value Prelude.Text -> NetworkInsightsAccessScopeAnalysis
mkNetworkInsightsAccessScopeAnalysis networkInsightsAccessScopeId
  = NetworkInsightsAccessScopeAnalysis
      {networkInsightsAccessScopeId = networkInsightsAccessScopeId,
       tags = Prelude.Nothing}
instance ToResourceProperties NetworkInsightsAccessScopeAnalysis where
  toResourceProperties NetworkInsightsAccessScopeAnalysis {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAccessScopeAnalysis",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NetworkInsightsAccessScopeId"
                              JSON..= networkInsightsAccessScopeId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON NetworkInsightsAccessScopeAnalysis where
  toJSON NetworkInsightsAccessScopeAnalysis {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NetworkInsightsAccessScopeId"
                 JSON..= networkInsightsAccessScopeId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "NetworkInsightsAccessScopeId" NetworkInsightsAccessScopeAnalysis where
  type PropertyType "NetworkInsightsAccessScopeId" NetworkInsightsAccessScopeAnalysis = Value Prelude.Text
  set newValue NetworkInsightsAccessScopeAnalysis {..}
    = NetworkInsightsAccessScopeAnalysis
        {networkInsightsAccessScopeId = newValue, ..}
instance Property "Tags" NetworkInsightsAccessScopeAnalysis where
  type PropertyType "Tags" NetworkInsightsAccessScopeAnalysis = [Tag]
  set newValue NetworkInsightsAccessScopeAnalysis {..}
    = NetworkInsightsAccessScopeAnalysis
        {tags = Prelude.pure newValue, ..}