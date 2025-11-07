module Stratosphere.QuickSight.Analysis.FilterTextAreaControlProperty (
        module Exports, FilterTextAreaControlProperty(..),
        mkFilterTextAreaControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TextAreaControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterTextAreaControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtertextareacontrol.html>
    FilterTextAreaControlProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtertextareacontrol.html#cfn-quicksight-analysis-filtertextareacontrol-delimiter>
                                   delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtertextareacontrol.html#cfn-quicksight-analysis-filtertextareacontrol-displayoptions>
                                   displayOptions :: (Prelude.Maybe TextAreaControlDisplayOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtertextareacontrol.html#cfn-quicksight-analysis-filtertextareacontrol-filtercontrolid>
                                   filterControlId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtertextareacontrol.html#cfn-quicksight-analysis-filtertextareacontrol-sourcefilterid>
                                   sourceFilterId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtertextareacontrol.html#cfn-quicksight-analysis-filtertextareacontrol-title>
                                   title :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterTextAreaControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> FilterTextAreaControlProperty
mkFilterTextAreaControlProperty
  filterControlId
  sourceFilterId
  title
  = FilterTextAreaControlProperty
      {haddock_workaround_ = (), filterControlId = filterControlId,
       sourceFilterId = sourceFilterId, title = title,
       delimiter = Prelude.Nothing, displayOptions = Prelude.Nothing}
instance ToResourceProperties FilterTextAreaControlProperty where
  toResourceProperties FilterTextAreaControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilterTextAreaControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterControlId" JSON..= filterControlId,
                            "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "Delimiter" Prelude.<$> delimiter,
                               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions]))}
instance JSON.ToJSON FilterTextAreaControlProperty where
  toJSON FilterTextAreaControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterControlId" JSON..= filterControlId,
               "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "Delimiter" Prelude.<$> delimiter,
                  (JSON..=) "DisplayOptions" Prelude.<$> displayOptions])))
instance Property "Delimiter" FilterTextAreaControlProperty where
  type PropertyType "Delimiter" FilterTextAreaControlProperty = Value Prelude.Text
  set newValue FilterTextAreaControlProperty {..}
    = FilterTextAreaControlProperty
        {delimiter = Prelude.pure newValue, ..}
instance Property "DisplayOptions" FilterTextAreaControlProperty where
  type PropertyType "DisplayOptions" FilterTextAreaControlProperty = TextAreaControlDisplayOptionsProperty
  set newValue FilterTextAreaControlProperty {..}
    = FilterTextAreaControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "FilterControlId" FilterTextAreaControlProperty where
  type PropertyType "FilterControlId" FilterTextAreaControlProperty = Value Prelude.Text
  set newValue FilterTextAreaControlProperty {..}
    = FilterTextAreaControlProperty {filterControlId = newValue, ..}
instance Property "SourceFilterId" FilterTextAreaControlProperty where
  type PropertyType "SourceFilterId" FilterTextAreaControlProperty = Value Prelude.Text
  set newValue FilterTextAreaControlProperty {..}
    = FilterTextAreaControlProperty {sourceFilterId = newValue, ..}
instance Property "Title" FilterTextAreaControlProperty where
  type PropertyType "Title" FilterTextAreaControlProperty = Value Prelude.Text
  set newValue FilterTextAreaControlProperty {..}
    = FilterTextAreaControlProperty {title = newValue, ..}