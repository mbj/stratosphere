module Stratosphere.Events.EventBus.LogConfigProperty (
        LogConfigProperty(..), mkLogConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbus-logconfig.html>
    LogConfigProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbus-logconfig.html#cfn-events-eventbus-logconfig-includedetail>
                       includeDetail :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbus-logconfig.html#cfn-events-eventbus-logconfig-level>
                       level :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogConfigProperty :: LogConfigProperty
mkLogConfigProperty
  = LogConfigProperty
      {haddock_workaround_ = (), includeDetail = Prelude.Nothing,
       level = Prelude.Nothing}
instance ToResourceProperties LogConfigProperty where
  toResourceProperties LogConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::EventBus.LogConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncludeDetail" Prelude.<$> includeDetail,
                            (JSON..=) "Level" Prelude.<$> level])}
instance JSON.ToJSON LogConfigProperty where
  toJSON LogConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncludeDetail" Prelude.<$> includeDetail,
               (JSON..=) "Level" Prelude.<$> level]))
instance Property "IncludeDetail" LogConfigProperty where
  type PropertyType "IncludeDetail" LogConfigProperty = Value Prelude.Text
  set newValue LogConfigProperty {..}
    = LogConfigProperty {includeDetail = Prelude.pure newValue, ..}
instance Property "Level" LogConfigProperty where
  type PropertyType "Level" LogConfigProperty = Value Prelude.Text
  set newValue LogConfigProperty {..}
    = LogConfigProperty {level = Prelude.pure newValue, ..}