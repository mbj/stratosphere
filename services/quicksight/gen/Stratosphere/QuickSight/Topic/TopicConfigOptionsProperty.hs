module Stratosphere.QuickSight.Topic.TopicConfigOptionsProperty (
        TopicConfigOptionsProperty(..), mkTopicConfigOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicConfigOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicconfigoptions.html>
    TopicConfigOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicconfigoptions.html#cfn-quicksight-topic-topicconfigoptions-qbusinessinsightsenabled>
                                qBusinessInsightsEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicConfigOptionsProperty :: TopicConfigOptionsProperty
mkTopicConfigOptionsProperty
  = TopicConfigOptionsProperty
      {haddock_workaround_ = (),
       qBusinessInsightsEnabled = Prelude.Nothing}
instance ToResourceProperties TopicConfigOptionsProperty where
  toResourceProperties TopicConfigOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.TopicConfigOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "QBusinessInsightsEnabled"
                              Prelude.<$> qBusinessInsightsEnabled])}
instance JSON.ToJSON TopicConfigOptionsProperty where
  toJSON TopicConfigOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "QBusinessInsightsEnabled"
                 Prelude.<$> qBusinessInsightsEnabled]))
instance Property "QBusinessInsightsEnabled" TopicConfigOptionsProperty where
  type PropertyType "QBusinessInsightsEnabled" TopicConfigOptionsProperty = Value Prelude.Bool
  set newValue TopicConfigOptionsProperty {..}
    = TopicConfigOptionsProperty
        {qBusinessInsightsEnabled = Prelude.pure newValue, ..}