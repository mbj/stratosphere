module Stratosphere.CleanRooms.AnalysisTemplate.AnalysisParameterProperty (
        AnalysisParameterProperty(..), mkAnalysisParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisParameterProperty
  = AnalysisParameterProperty {defaultValue :: (Prelude.Maybe (Value Prelude.Text)),
                               name :: (Value Prelude.Text),
                               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AnalysisParameterProperty
mkAnalysisParameterProperty name type'
  = AnalysisParameterProperty
      {name = name, type' = type', defaultValue = Prelude.Nothing}
instance ToResourceProperties AnalysisParameterProperty where
  toResourceProperties AnalysisParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::AnalysisTemplate.AnalysisParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultValue" Prelude.<$> defaultValue]))}
instance JSON.ToJSON AnalysisParameterProperty where
  toJSON AnalysisParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "DefaultValue" Prelude.<$> defaultValue])))
instance Property "DefaultValue" AnalysisParameterProperty where
  type PropertyType "DefaultValue" AnalysisParameterProperty = Value Prelude.Text
  set newValue AnalysisParameterProperty {..}
    = AnalysisParameterProperty
        {defaultValue = Prelude.pure newValue, ..}
instance Property "Name" AnalysisParameterProperty where
  type PropertyType "Name" AnalysisParameterProperty = Value Prelude.Text
  set newValue AnalysisParameterProperty {..}
    = AnalysisParameterProperty {name = newValue, ..}
instance Property "Type" AnalysisParameterProperty where
  type PropertyType "Type" AnalysisParameterProperty = Value Prelude.Text
  set newValue AnalysisParameterProperty {..}
    = AnalysisParameterProperty {type' = newValue, ..}