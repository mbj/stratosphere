module Stratosphere.SES.ReceiptRule.StopActionProperty (
        StopActionProperty(..), mkStopActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StopActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-stopaction.html>
    StopActionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-stopaction.html#cfn-ses-receiptrule-stopaction-scope>
                        scope :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-stopaction.html#cfn-ses-receiptrule-stopaction-topicarn>
                        topicArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStopActionProperty :: Value Prelude.Text -> StopActionProperty
mkStopActionProperty scope
  = StopActionProperty
      {haddock_workaround_ = (), scope = scope,
       topicArn = Prelude.Nothing}
instance ToResourceProperties StopActionProperty where
  toResourceProperties StopActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptRule.StopAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Scope" JSON..= scope]
                           (Prelude.catMaybes [(JSON..=) "TopicArn" Prelude.<$> topicArn]))}
instance JSON.ToJSON StopActionProperty where
  toJSON StopActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Scope" JSON..= scope]
              (Prelude.catMaybes [(JSON..=) "TopicArn" Prelude.<$> topicArn])))
instance Property "Scope" StopActionProperty where
  type PropertyType "Scope" StopActionProperty = Value Prelude.Text
  set newValue StopActionProperty {..}
    = StopActionProperty {scope = newValue, ..}
instance Property "TopicArn" StopActionProperty where
  type PropertyType "TopicArn" StopActionProperty = Value Prelude.Text
  set newValue StopActionProperty {..}
    = StopActionProperty {topicArn = Prelude.pure newValue, ..}