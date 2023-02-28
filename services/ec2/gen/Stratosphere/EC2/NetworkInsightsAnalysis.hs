module Stratosphere.EC2.NetworkInsightsAnalysis (
        NetworkInsightsAnalysis(..), mkNetworkInsightsAnalysis
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data NetworkInsightsAnalysis
  = NetworkInsightsAnalysis {additionalAccounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                             filterInArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                             networkInsightsPathId :: (Value Prelude.Text),
                             tags :: (Prelude.Maybe [Tag])}
mkNetworkInsightsAnalysis ::
  Value Prelude.Text -> NetworkInsightsAnalysis
mkNetworkInsightsAnalysis networkInsightsPathId
  = NetworkInsightsAnalysis
      {networkInsightsPathId = networkInsightsPathId,
       additionalAccounts = Prelude.Nothing,
       filterInArns = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties NetworkInsightsAnalysis where
  toResourceProperties NetworkInsightsAnalysis {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NetworkInsightsPathId" JSON..= networkInsightsPathId]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalAccounts" Prelude.<$> additionalAccounts,
                               (JSON..=) "FilterInArns" Prelude.<$> filterInArns,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON NetworkInsightsAnalysis where
  toJSON NetworkInsightsAnalysis {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NetworkInsightsPathId" JSON..= networkInsightsPathId]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalAccounts" Prelude.<$> additionalAccounts,
                  (JSON..=) "FilterInArns" Prelude.<$> filterInArns,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AdditionalAccounts" NetworkInsightsAnalysis where
  type PropertyType "AdditionalAccounts" NetworkInsightsAnalysis = ValueList Prelude.Text
  set newValue NetworkInsightsAnalysis {..}
    = NetworkInsightsAnalysis
        {additionalAccounts = Prelude.pure newValue, ..}
instance Property "FilterInArns" NetworkInsightsAnalysis where
  type PropertyType "FilterInArns" NetworkInsightsAnalysis = ValueList Prelude.Text
  set newValue NetworkInsightsAnalysis {..}
    = NetworkInsightsAnalysis
        {filterInArns = Prelude.pure newValue, ..}
instance Property "NetworkInsightsPathId" NetworkInsightsAnalysis where
  type PropertyType "NetworkInsightsPathId" NetworkInsightsAnalysis = Value Prelude.Text
  set newValue NetworkInsightsAnalysis {..}
    = NetworkInsightsAnalysis {networkInsightsPathId = newValue, ..}
instance Property "Tags" NetworkInsightsAnalysis where
  type PropertyType "Tags" NetworkInsightsAnalysis = [Tag]
  set newValue NetworkInsightsAnalysis {..}
    = NetworkInsightsAnalysis {tags = Prelude.pure newValue, ..}