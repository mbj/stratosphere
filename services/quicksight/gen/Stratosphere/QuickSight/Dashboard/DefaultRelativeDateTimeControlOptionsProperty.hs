module Stratosphere.QuickSight.Dashboard.DefaultRelativeDateTimeControlOptionsProperty (
        module Exports, DefaultRelativeDateTimeControlOptionsProperty(..),
        mkDefaultRelativeDateTimeControlOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.RelativeDateTimeControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultRelativeDateTimeControlOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultrelativedatetimecontroloptions.html>
    DefaultRelativeDateTimeControlOptionsProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultrelativedatetimecontroloptions.html#cfn-quicksight-dashboard-defaultrelativedatetimecontroloptions-commitmode>
                                                   commitMode :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultrelativedatetimecontroloptions.html#cfn-quicksight-dashboard-defaultrelativedatetimecontroloptions-displayoptions>
                                                   displayOptions :: (Prelude.Maybe RelativeDateTimeControlDisplayOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultRelativeDateTimeControlOptionsProperty ::
  DefaultRelativeDateTimeControlOptionsProperty
mkDefaultRelativeDateTimeControlOptionsProperty
  = DefaultRelativeDateTimeControlOptionsProperty
      {haddock_workaround_ = (), commitMode = Prelude.Nothing,
       displayOptions = Prelude.Nothing}
instance ToResourceProperties DefaultRelativeDateTimeControlOptionsProperty where
  toResourceProperties
    DefaultRelativeDateTimeControlOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DefaultRelativeDateTimeControlOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CommitMode" Prelude.<$> commitMode,
                            (JSON..=) "DisplayOptions" Prelude.<$> displayOptions])}
instance JSON.ToJSON DefaultRelativeDateTimeControlOptionsProperty where
  toJSON DefaultRelativeDateTimeControlOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CommitMode" Prelude.<$> commitMode,
               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions]))
instance Property "CommitMode" DefaultRelativeDateTimeControlOptionsProperty where
  type PropertyType "CommitMode" DefaultRelativeDateTimeControlOptionsProperty = Value Prelude.Text
  set newValue DefaultRelativeDateTimeControlOptionsProperty {..}
    = DefaultRelativeDateTimeControlOptionsProperty
        {commitMode = Prelude.pure newValue, ..}
instance Property "DisplayOptions" DefaultRelativeDateTimeControlOptionsProperty where
  type PropertyType "DisplayOptions" DefaultRelativeDateTimeControlOptionsProperty = RelativeDateTimeControlDisplayOptionsProperty
  set newValue DefaultRelativeDateTimeControlOptionsProperty {..}
    = DefaultRelativeDateTimeControlOptionsProperty
        {displayOptions = Prelude.pure newValue, ..}