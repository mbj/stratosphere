module Stratosphere.QuickSight.Template.FilterRelativeDateTimeControlProperty (
        module Exports, FilterRelativeDateTimeControlProperty(..),
        mkFilterRelativeDateTimeControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.RelativeDateTimeControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterRelativeDateTimeControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filterrelativedatetimecontrol.html>
    FilterRelativeDateTimeControlProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filterrelativedatetimecontrol.html#cfn-quicksight-template-filterrelativedatetimecontrol-commitmode>
                                           commitMode :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filterrelativedatetimecontrol.html#cfn-quicksight-template-filterrelativedatetimecontrol-displayoptions>
                                           displayOptions :: (Prelude.Maybe RelativeDateTimeControlDisplayOptionsProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filterrelativedatetimecontrol.html#cfn-quicksight-template-filterrelativedatetimecontrol-filtercontrolid>
                                           filterControlId :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filterrelativedatetimecontrol.html#cfn-quicksight-template-filterrelativedatetimecontrol-sourcefilterid>
                                           sourceFilterId :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filterrelativedatetimecontrol.html#cfn-quicksight-template-filterrelativedatetimecontrol-title>
                                           title :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterRelativeDateTimeControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> FilterRelativeDateTimeControlProperty
mkFilterRelativeDateTimeControlProperty
  filterControlId
  sourceFilterId
  title
  = FilterRelativeDateTimeControlProperty
      {haddock_workaround_ = (), filterControlId = filterControlId,
       sourceFilterId = sourceFilterId, title = title,
       commitMode = Prelude.Nothing, displayOptions = Prelude.Nothing}
instance ToResourceProperties FilterRelativeDateTimeControlProperty where
  toResourceProperties FilterRelativeDateTimeControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FilterRelativeDateTimeControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterControlId" JSON..= filterControlId,
                            "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "CommitMode" Prelude.<$> commitMode,
                               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions]))}
instance JSON.ToJSON FilterRelativeDateTimeControlProperty where
  toJSON FilterRelativeDateTimeControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterControlId" JSON..= filterControlId,
               "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "CommitMode" Prelude.<$> commitMode,
                  (JSON..=) "DisplayOptions" Prelude.<$> displayOptions])))
instance Property "CommitMode" FilterRelativeDateTimeControlProperty where
  type PropertyType "CommitMode" FilterRelativeDateTimeControlProperty = Value Prelude.Text
  set newValue FilterRelativeDateTimeControlProperty {..}
    = FilterRelativeDateTimeControlProperty
        {commitMode = Prelude.pure newValue, ..}
instance Property "DisplayOptions" FilterRelativeDateTimeControlProperty where
  type PropertyType "DisplayOptions" FilterRelativeDateTimeControlProperty = RelativeDateTimeControlDisplayOptionsProperty
  set newValue FilterRelativeDateTimeControlProperty {..}
    = FilterRelativeDateTimeControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "FilterControlId" FilterRelativeDateTimeControlProperty where
  type PropertyType "FilterControlId" FilterRelativeDateTimeControlProperty = Value Prelude.Text
  set newValue FilterRelativeDateTimeControlProperty {..}
    = FilterRelativeDateTimeControlProperty
        {filterControlId = newValue, ..}
instance Property "SourceFilterId" FilterRelativeDateTimeControlProperty where
  type PropertyType "SourceFilterId" FilterRelativeDateTimeControlProperty = Value Prelude.Text
  set newValue FilterRelativeDateTimeControlProperty {..}
    = FilterRelativeDateTimeControlProperty
        {sourceFilterId = newValue, ..}
instance Property "Title" FilterRelativeDateTimeControlProperty where
  type PropertyType "Title" FilterRelativeDateTimeControlProperty = Value Prelude.Text
  set newValue FilterRelativeDateTimeControlProperty {..}
    = FilterRelativeDateTimeControlProperty {title = newValue, ..}