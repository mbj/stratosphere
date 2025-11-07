module Stratosphere.QuickSight.Dashboard.ParameterTextAreaControlProperty (
        module Exports, ParameterTextAreaControlProperty(..),
        mkParameterTextAreaControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TextAreaControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterTextAreaControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parametertextareacontrol.html>
    ParameterTextAreaControlProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parametertextareacontrol.html#cfn-quicksight-dashboard-parametertextareacontrol-delimiter>
                                      delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parametertextareacontrol.html#cfn-quicksight-dashboard-parametertextareacontrol-displayoptions>
                                      displayOptions :: (Prelude.Maybe TextAreaControlDisplayOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parametertextareacontrol.html#cfn-quicksight-dashboard-parametertextareacontrol-parametercontrolid>
                                      parameterControlId :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parametertextareacontrol.html#cfn-quicksight-dashboard-parametertextareacontrol-sourceparametername>
                                      sourceParameterName :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parametertextareacontrol.html#cfn-quicksight-dashboard-parametertextareacontrol-title>
                                      title :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterTextAreaControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ParameterTextAreaControlProperty
mkParameterTextAreaControlProperty
  parameterControlId
  sourceParameterName
  title
  = ParameterTextAreaControlProperty
      {haddock_workaround_ = (), parameterControlId = parameterControlId,
       sourceParameterName = sourceParameterName, title = title,
       delimiter = Prelude.Nothing, displayOptions = Prelude.Nothing}
instance ToResourceProperties ParameterTextAreaControlProperty where
  toResourceProperties ParameterTextAreaControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ParameterTextAreaControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ParameterControlId" JSON..= parameterControlId,
                            "SourceParameterName" JSON..= sourceParameterName,
                            "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "Delimiter" Prelude.<$> delimiter,
                               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions]))}
instance JSON.ToJSON ParameterTextAreaControlProperty where
  toJSON ParameterTextAreaControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ParameterControlId" JSON..= parameterControlId,
               "SourceParameterName" JSON..= sourceParameterName,
               "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "Delimiter" Prelude.<$> delimiter,
                  (JSON..=) "DisplayOptions" Prelude.<$> displayOptions])))
instance Property "Delimiter" ParameterTextAreaControlProperty where
  type PropertyType "Delimiter" ParameterTextAreaControlProperty = Value Prelude.Text
  set newValue ParameterTextAreaControlProperty {..}
    = ParameterTextAreaControlProperty
        {delimiter = Prelude.pure newValue, ..}
instance Property "DisplayOptions" ParameterTextAreaControlProperty where
  type PropertyType "DisplayOptions" ParameterTextAreaControlProperty = TextAreaControlDisplayOptionsProperty
  set newValue ParameterTextAreaControlProperty {..}
    = ParameterTextAreaControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "ParameterControlId" ParameterTextAreaControlProperty where
  type PropertyType "ParameterControlId" ParameterTextAreaControlProperty = Value Prelude.Text
  set newValue ParameterTextAreaControlProperty {..}
    = ParameterTextAreaControlProperty
        {parameterControlId = newValue, ..}
instance Property "SourceParameterName" ParameterTextAreaControlProperty where
  type PropertyType "SourceParameterName" ParameterTextAreaControlProperty = Value Prelude.Text
  set newValue ParameterTextAreaControlProperty {..}
    = ParameterTextAreaControlProperty
        {sourceParameterName = newValue, ..}
instance Property "Title" ParameterTextAreaControlProperty where
  type PropertyType "Title" ParameterTextAreaControlProperty = Value Prelude.Text
  set newValue ParameterTextAreaControlProperty {..}
    = ParameterTextAreaControlProperty {title = newValue, ..}